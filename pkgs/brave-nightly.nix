{ callPackage, fetchurl }:
let
  version = "1.99.31";
  hash = "1lk0v9vckmcsn0xpc0aivamqz2rrhf46vazzrak9dsj2fhaf9lnk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.31/brave-browser-nightly_1.99.31_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}