{
  description = "Brave Browser Nightly Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages = {
          brave-nightly = pkgs.callPackage ./pkgs/brave-nightly.nix {};
          brave-beta = pkgs.callPackage ./pkgs/brave-beta.nix {};
          default = self.packages.${system}.brave-nightly;
        };
      }
    );
}
