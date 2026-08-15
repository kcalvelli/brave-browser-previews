{ callPackage, fetchurl }:
let
  version = "1.94.110";
  hash = "02sdjrzccnj4z91xr8k4hbs8fgswmg9jyhcz7qifxkk8yabzq5yl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.110/brave-browser-beta_1.94.110_amd64.deb";
}