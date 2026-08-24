{ callPackage, fetchurl }:
let
  version = "1.96.9";
  hash = "16w72zrzlb82zqdxxkrlqdisc6akn7bihvynaxld68igmrm2csdl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.9/brave-browser-nightly_1.96.9_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}