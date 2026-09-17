{ callPackage, fetchurl }:
let
  version = "1.98.4";
  hash = "1rws3r54j9dcfvg4wh4z3jgzlxn2slm4s4fy7gpzhcnxi2l83i0z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.4/brave-browser-nightly_1.98.4_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}