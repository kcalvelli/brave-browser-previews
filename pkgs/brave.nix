# Brave stable. nixpkgs dropped `brave` (no committer among its maintainers),
# so it lives here now with its rowdier siblings. Takes commandLineArgs at the
# callPackage layer so home-manager's `programs.brave` can `.override` it.
{
  callPackage,
  commandLineArgs ? "",
}:
let
  version = "1.100.58";
  hash = "19any5rx19yzhiarfj95w5yfbjq2wimq6k1jfwy38q7x9rk1x79d";
in
callPackage ./build-brave.nix { } {
  pname = "brave";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-release.s3.brave.com/pool/main/b/brave-browser/brave-browser_1.100.58_amd64.deb";
}
