# Brave stable. nixpkgs dropped `brave` (no committer among its maintainers),
# so it lives here now with its rowdier siblings. Takes commandLineArgs at the
# callPackage layer so home-manager's `programs.brave` can `.override` it.
{
  callPackage,
  commandLineArgs ? "",
}:
let
  version = "1.100.59";
  hash = "0qbqn7f0zrrd871ci0hcdjipsmb2a26id35afjfsfx39qmbr5wpg";
in
callPackage ./build-brave.nix { } {
  pname = "brave";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-release.s3.brave.com/pool/main/b/brave-browser/brave-browser_1.100.59_amd64.deb";
}
