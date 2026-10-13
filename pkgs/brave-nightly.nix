{ callPackage, fetchurl }:
let
  version = "1.99.36";
  hash = "0kz6dp339vr97gib8bxkvc12f7ilhz7rknblsma517sla2l1jbgn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.36/brave-browser-nightly_1.99.36_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}