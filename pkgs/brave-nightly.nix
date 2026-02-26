{ callPackage, fetchurl }:
let
  version = "1.89.77";
  hash = "0hdk5v3qck39lxh0n1k2fz5hghxavr3wcw056ygfgk7zkr9i7vsl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}