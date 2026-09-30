{ callPackage, fetchurl }:
let
  version = "1.98.43";
  hash = "0ywkcl7c9ryr8zqmajpvz1v94hacf9dlg4da5dx313fbxsw8i40i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.43/brave-browser-nightly_1.98.43_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}