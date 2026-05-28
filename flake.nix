{
  description = "Brave Browser Nightly Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      # Define the overlay strictly
      overlay = final: prev: {
        brave-nightly = final.callPackage ./pkgs/brave-nightly.nix {};
        brave-beta = final.callPackage ./pkgs/brave-beta.nix {};
        brave-origin-nightly = final.callPackage ./pkgs/brave-origin-nightly.nix {};
        brave-origin-beta = final.callPackage ./pkgs/brave-origin-beta.nix {};
      };
    in
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { 
          inherit system;
          overlays = [ overlay ]; 
        };
      in
      {
        packages = {
          brave-nightly = pkgs.brave-nightly;
          brave-beta = pkgs.brave-beta;
          brave-origin-nightly = pkgs.brave-origin-nightly;
          brave-origin-beta = pkgs.brave-origin-beta;
          default = pkgs.brave-nightly;
        };
      }
    ) // {
      # System-agnostic outputs
      overlays.default = overlay;

      nixosModules.default = { config, lib, pkgs, ... }: {
        nixpkgs.overlays = [ overlay ];
        imports = [ ./modules/brave-browser.nix ];
      };
    };
}
