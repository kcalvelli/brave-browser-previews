{ callPackage, fetchurl }:
let
  version = "1.92.45";
  hash = "10d8cy9v71m6lzwm5yryj7qwzzr72512hk7dfc6v3zn1n0nrjq66";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.45/brave-browser-nightly_1.92.45_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}