{ callPackage, fetchurl }:
let
  version = "1.102.37";
  hash = "0fkl7i4f9mvgb21241sjpflxwb6z9ma3kv4rqmdfbjy5n3akcyq5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.37/brave-browser-nightly_1.102.37_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}