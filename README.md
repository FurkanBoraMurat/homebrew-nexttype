# Homebrew tap for NextType

    brew install --cask FurkanBoraMurat/nexttype/nexttype

While the Mac build is unsigned, macOS blocks the first launch: open System Settings, Privacy and Security, and choose Open Anyway (or run `xattr -dr com.apple.quarantine /Applications/NextType.app`). Homebrew 7 no longer offers `--no-quarantine`.

`Casks/nexttype.rb` is rewritten by the app's release workflow (`scripts/publish.sh` in the app repository) on every version: it points at the universal DMG in [nexttype-releases](https://github.com/FurkanBoraMurat/nexttype-releases) and carries its sha256. The app updates itself afterwards (`auto_updates true`).
