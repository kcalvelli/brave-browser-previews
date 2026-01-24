{ callPackage, fetchurl }:
let
  version = "1.88.60";
  hash = "0cmxcfs5sc3gq3a0aca62n1jy951bz1mvir64dy4ky8sqasj0lvj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}