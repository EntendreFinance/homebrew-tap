# Entendre Homebrew tap

The Entendre CLI is in public alpha. This tap supports Intel and Apple Silicon Macs and x64 and ARM64 Linux. The standalone CLI includes its runtime.

```sh
brew install entendrefinance/tap/entendre
entendre --version
```

To try a read, sign in through your browser and select an account you can access. On Linux, login requires libsecret and an unlocked keyring.

```sh
entendre auth login --read-only
entendre auth status --verify
entendre tags list --limit 1
```

Upgrade with `brew update && brew upgrade entendre`. To disconnect an account, run `entendre auth logout` for that profile before uninstalling. Removing the package leaves saved accounts in place.

```sh
brew uninstall entendre
```

Windows users can install the same production release from PowerShell with `irm https://entendre.ai/install.ps1 | iex`.

The formula installs the standalone production binary for your operating system and processor. For each new release, regenerate `Formula/entendre.rb` with the release commit's `apps/cli/scripts/public/formula.ts` after the versioned downloads and checksums are public. Test with `brew test entendrefinance/tap/entendre`.
