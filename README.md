# Entendre Homebrew tap

Install the Entendre CLI on macOS or Linux with Homebrew:

```sh
brew install entendrefinance/tap/entendre
entendre --version
```

Run `entendre auth login --read-only` to connect an account. On Linux, login requires libsecret and an unlocked keyring. To upgrade, run `brew update && brew upgrade entendre`.

The formula installs the standalone production binary for your operating system and processor. For each new release, regenerate `Formula/entendre.rb` with the release commit's `apps/cli/scripts/public/formula.ts` after the versioned downloads and checksums are public. Test with `brew test entendrefinance/tap/entendre`.
