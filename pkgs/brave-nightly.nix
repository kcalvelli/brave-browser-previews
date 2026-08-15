{ callPackage, fetchurl }:
let
  version = "1.95.73";
  hash = "152fq275yqd3cxx3l50c6np89prvyqggapzk6rnq9pc805k6p0jn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.73/brave-browser-nightly_1.95.73_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}