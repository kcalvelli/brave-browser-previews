{ callPackage, fetchurl }:
let
  version = "1.92.64";
  hash = "0skqpkdc2lb60a92f8i4qck5wg6wwcsi86slqrxxg9m8bgn4viy1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.64/brave-browser-nightly_1.92.64_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}