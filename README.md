# Metryon Homebrew tap

Install [atlo](https://github.com/metryon/atlo), an agent-first CLI for Jira Cloud
and Confluence Cloud, on Apple Silicon or Intel macOS:

```sh
brew install metryon/tap/atlo
atlo version
```

Update with `brew upgrade metryon/tap/atlo`; remove with `brew uninstall atlo`.
If your Homebrew version requests trust, use
`brew trust --formula metryon/tap/atlo` to trust only this formula.

The formula installs a prebuilt GitHub Release archive with a pinned SHA-256
checksum. It includes atlo's MIT license and third-party notices. No Go compiler
is needed.

## Updating the formula

Download the packaging archive from the new atlo release and copy
`homebrew/atlo.rb` into `Formula/atlo.rb`. Test the formula on macOS, then commit
and push using Conventional Commits. See atlo's
[distribution guide](https://github.com/metryon/atlo/blob/main/docs/installation.md).
