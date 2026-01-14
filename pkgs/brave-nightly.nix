{ callPackage, fetchurl }:
let
  version = "1.88.19";
  hash = "0ad8c8j0s3ydhr1zdh1n974h7gx3v9mcsqd77szpcasqap1k05ic";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}