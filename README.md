# homebrew-tap

[Homebrew](https://brew.sh) tap for [HereNotThere](https://github.com/HereNotThere) apps.

## Slashtalk

Floating dock for coordination without meetings — [HereNotThere/slashtalk](https://github.com/HereNotThere/slashtalk).

```sh
brew install --cask herenotthere/tap/slashtalk
```

Or, if you'd prefer to tap first:

```sh
brew tap herenotthere/tap
brew install --cask slashtalk
```

Requires macOS 11 (Big Sur) or later. The app uses `electron-updater` for in-app updates, so `brew upgrade` is a no-op between releases — the cask is bumped automatically when a new Slashtalk desktop version is published.

## How this tap is maintained

Casks here are auto-bumped by [`HereNotThere/slashtalk`'s release workflow](https://github.com/HereNotThere/slashtalk/blob/main/.github/workflows/release.yml). On each desktop release, GitHub Actions rewrites the cask's `version` and `sha256` from the published DMG and pushes a `<cask> <version>` commit here.
