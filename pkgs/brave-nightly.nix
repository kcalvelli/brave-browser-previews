{ callPackage, fetchurl }:
let
  version = "1.88.8";
  hash = "0gzqbvkf9qaca9i1cjvl9l5is302bz5g760vp4gv0bxhys4whc1i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}