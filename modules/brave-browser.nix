{ config, lib, pkgs, ... }:

with lib;

let
  # Helper to generate the module for a specific Brave channel
  makeBraveModule = { name, description, pkgName, policyDir }:
    let
      cfg = config.programs.${name};
      defaultPackage = pkgs.${pkgName} or (throw "Package ${pkgName} not found in pkgs");
    in
    {
      options.programs.${name} = {
        enable = mkEnableOption description;

        package = mkOption {
          type = types.package;
          default = defaultPackage;
          defaultText = literalExpression "pkgs.${pkgName}";
          description = "The ${description} package to use.";
        };

        extensions = mkOption {
          type = types.listOf types.str;
          default = [];
          description = ''
            List of extension IDs to install.
          '';
        };

        commandLineArgs = mkOption {
          type = types.listOf types.str;
          default = [];
          description = ''
            List of command line arguments to pass to the browser.
          '';
        };

        extraOpts = mkOption {
          type = types.attrs;
          default = {};
          description = ''
            Extra application policies to be written to
            <filename>${policyDir}/managed/${name}.json</filename>.
          '';
        };

        defaultSearchProviderEnabled = mkOption {
          type = types.bool;
          default = true;
          description = "Enable the default search provider.";
        };

        defaultSearchProviderSearchURL = mkOption {
          type = types.str;
          default = "https://search.brave.com/search?q={searchTerms}";
          description = "Search URL for the default search provider.";
        };

        defaultSearchProviderSuggestURL = mkOption {
          type = types.str;
          default = "https://search.brave.com/api/suggest?q={searchTerms}";
          description = "Suggest URL for the default search provider.";
        };

        homepageLocation = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = "Homepage URL.";
        };
      };

      config = mkIf cfg.enable {
        environment.systemPackages = [
          (if cfg.commandLineArgs != [] then
            pkgs.writeShellScriptBin pkgName ''
              exec ${cfg.package}/bin/${pkgName} ${lib.escapeShellArgs cfg.commandLineArgs} "$@"
            ''
          else
            cfg.package)
        ];

        environment.etc."${policyDir}/managed/${name}.json".text = builtins.toJSON (
          {
            ExtensionInstallForcelist = cfg.extensions;
            DefaultSearchProviderEnabled = cfg.defaultSearchProviderEnabled;
            DefaultSearchProviderSearchURL = cfg.defaultSearchProviderSearchURL;
            DefaultSearchProviderSuggestURL = cfg.defaultSearchProviderSuggestURL;
          }
          // (optionalAttrs (cfg.homepageLocation != null) {
            HomepageLocation = cfg.homepageLocation;
            HomepageIsNewTabPage = false;
          })
          // cfg.extraOpts
        );
      };
    };

in
{
  imports = [
    (makeBraveModule {
      name = "brave-nightly";
      description = "Brave Browser Nightly";
      pkgName = "brave-nightly"; # This expects the overlay/input to provide it in pkgs
      policyDir = "brave/policies"; 
    })
    (makeBraveModule {
      name = "brave-beta";
      description = "Brave Browser Beta";
      pkgName = "brave-beta";
      policyDir = "brave/policies";
    })
  ];
}
