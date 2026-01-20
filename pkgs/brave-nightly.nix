{ callPackage, fetchurl }:
let
  version = "1.88.42";
  hash = "0hfsb4s3pbvp5y1cg03fm3b5v89fla7irarr02amcmql2i8vvw1v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}