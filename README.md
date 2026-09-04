# gRiverOS/homebrew-tap

Homebrew tap for my macOS apps.

## Usage

```bash
brew install --cask gRiverOS/tap/notch-prompter
```

Since Homebrew 6, non-official taps are untrusted by default. Installing with the fully qualified name above trusts that single cask and works in one step.

To use the short name instead, trust the whole tap first:

```bash
brew trust gRiverOS/tap
brew tap gRiverOS/tap
brew install --cask notch-prompter
```

## Casks

| Cask | Description |
|---|---|
| [notch-prompter](https://github.com/gRiverOS/notch-prompter) | Teleprompter that hangs from the MacBook notch |

## License

The casks in this tap are MIT licensed. Each application keeps its own license.
