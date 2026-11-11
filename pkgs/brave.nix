# Brave stable. nixpkgs dropped `brave` (no committer among its maintainers),
# so it lives here now with its rowdier siblings. Takes commandLineArgs at the
# callPackage layer so home-manager's `programs.brave` can `.override` it.
{
  callPackage,
  commandLineArgs ? "",
}:
let
  version = "1.99.56";
  hash = "0wmw70zqczri35rv1f9lrc7sjxrr42pikcbw5glfb3vm138z8njv";
in
callPackage ./build-brave.nix { } {
  pname = "brave";
  inherit version hash commandLineArgs;
  url = "https://brave-browser-apt-release.s3.brave.com/pool/main/b/brave-browser/brave-browser_1.99.56_amd64.deb";
}
