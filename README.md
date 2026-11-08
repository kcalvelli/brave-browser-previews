# Brave Browser Previews Flake

[![Update Brave](https://github.com/kcalvelli/brave-browser-previews/actions/workflows/update.yml/badge.svg)](https://github.com/kcalvelli/brave-browser-previews/actions/workflows/update.yml)

A **Nix Flake** that ships every Brave there is for Linux (`x86_64-linux`): **Stable**, **Beta**, **Nightly**, **Origin Beta**, and **Origin Nightly**.

The name says "previews" because that's how it started. Then nixpkgs dropped `brave` (none of its maintainers had commit access to push the security fixes through), so stable moved in too. It's all the Braves now. The name stays because renaming a flake input breaks everyone downstream.

It updates itself daily from the official [Brave GitHub Releases](https://github.com/brave/brave-browser/releases) and Brave's apt repositories.

## Packages

| Package | Channel | Source |
|---|---|---|
| `brave` | Stable | `brave-browser-apt-release.s3.brave.com` |
| `brave-beta` | Beta | GitHub releases |
| `brave-nightly` | Nightly | GitHub releases |
| `brave-origin-beta` | [Origin](https://brave.com/origin/) Beta | GitHub releases |
| `brave-origin-nightly` | [Origin](https://brave.com/origin/) Nightly | GitHub releases |

Origin is Brave's privacy, adblock, and Shields stack without the extras (Rewards, Wallet, AI, and so on).

### `brave` is a drop-in for the old nixpkgs package

- Same binary (`bin/brave`), desktop file (`brave-browser.desktop`), icon, and WM class (`brave-browser`). Window rules and default-browser settings keep working as before.
- `commandLineArgs` is accepted at the `callPackage` layer, so `brave.override { commandLineArgs = "..."; }` works. That's what home-manager's `programs.brave` calls, so it works unchanged once the overlay is applied.

## Usage

### 1. Add Input

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    brave-previews.url = "github:kcalvelli/brave-browser-previews";
    # Recommended: follow your system's nixpkgs to avoid duplicate store paths
    brave-previews.inputs.nixpkgs.follows = "nixpkgs";
  };
}
```

### 2. Overlay (bring back `pkgs.brave`)

The overlay adds all five packages to `pkgs`. Use it when something still expects `pkgs.brave`, such as home-manager's `programs.brave`:

```nix
{
  nixpkgs.overlays = [ brave-previews.overlays.default ];
}
```

```nix
# home.nix — with the overlay applied (and useGlobalPkgs, if you use it)
programs.brave = {
  enable = true;
  commandLineArgs = [ "--password-store=detect" ];
};
```

### 3. NixOS Module (preview channels)

The NixOS module applies the overlay and adds `programs.<channel>` options for the preview channels, modeled on `programs.chromium`. Stable isn't one of them. Use home-manager's `programs.brave` for that, as shown above.

```nix
{ brave-previews, ... }:
{
  imports = [ brave-previews.nixosModules.default ];

  programs.brave-nightly = {
    enable = true;
    extensions = [ "cjpalhdlnbpafiamejdnhcphjbkeiagm" ]; # uBlock Origin
    defaultSearchProviderSearchURL = "https://search.brave.com/search?q={searchTerms}";
  };

  programs.brave-beta.enable = true;
  programs.brave-origin-nightly.enable = true;
  programs.brave-origin-beta.enable = true;
}
```

### 4. Packages (Ad-hoc)

```nix
{ pkgs, brave-previews, ... }:
{
  environment.systemPackages = with brave-previews.packages.${pkgs.stdenv.hostPlatform.system}; [
    brave
    brave-nightly
  ];
}
```

### 5. Run Directly

```bash
nix run github:kcalvelli/brave-browser-previews#brave
nix run github:kcalvelli/brave-browser-previews#brave-beta
nix run github:kcalvelli/brave-browser-previews#brave-nightly
nix run github:kcalvelli/brave-browser-previews#brave-origin-beta
nix run github:kcalvelli/brave-browser-previews#brave-origin-nightly
```

## How It Works

1. **`update.sh`** reads the release apt repo's `Packages` index for Stable. For the four preview channels it uses the GitHub releases API, since their apt repos trail it by days. Each GitHub release carries both the `brave-browser-*` and `brave-origin-*` debs, so assets are matched by package name.
2. **Prefetch**: `nix-prefetch-url` produces the hash.
3. **Update**: the matching file under `pkgs/` gets the new version, hash, and URL.
4. **CI/CD**: `.github/workflows/update.yml` runs the script daily, checks that everything builds, and commits to `master`.

All five channels are built by `pkgs/build-brave.nix`, which repackages the upstream `.deb`.

## License

This project code is licensed under the MIT License.
Brave Browser itself is licensed under the [Mozilla Public License 2.0](https://github.com/brave/brave-browser/blob/master/LICENSE).
