# BriefBar for Homebrew

The Homebrew cask for [BriefBar](https://github.com/mnsn/brief-bar), the macOS menu-bar app that shows
what needs you in Teams, Azure DevOps and GitHub Copilot.

```sh
brew install --cask mnsn/tap/briefbar
```

BriefBar needs macOS 15 or later, on Apple silicon. It isn't notarized by Apple, so the first time
you open it, macOS blocks it: click **Done**, then **Open Anyway** in **System Settings › Privacy &
Security**. Then turn on the sources you want, as its
[README](https://github.com/mnsn/brief-bar#turning-a-source-on) describes.

BriefBar updates itself, so `brew upgrade` leaves it alone unless you add `--greedy`.

To remove it, run `brew uninstall --cask briefbar`, and remove it from the Full Disk Access list.
`brew uninstall --cask --zap briefbar` also deletes its settings and what it saved.

BriefBar's [release workflow](https://github.com/mnsn/brief-bar/blob/main/.github/workflows/release.yml)
updates the cask for each release, with the SHA-256 of the zip it publishes. Report problems in
[BriefBar's issues](https://github.com/mnsn/brief-bar/issues).
