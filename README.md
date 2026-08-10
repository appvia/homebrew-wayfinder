# homebrew-wayfinder

Homebrew tap for the [Wayfinder](https://www.appvia.io/wayfinder) CLI (`wf`),
which is not yet available in homebrew-core.

## Install

```bash
brew tap appvia/wayfinder
brew install wf
wf version
```

`brew install wayfinder` is an alias for `brew install wf` and installs the same
formula, so either name works. The installed command is always `wf`.

Upgrade to newer releases later with `brew upgrade wf`.

## Formulae

| Formula  | Channel           | Notes |
|----------|-------------------|-------|
| `wf`     | stable            | The production Wayfinder CLI. Updated when a release is promoted to production. |
| `wf-dev` | release candidate | The latest published candidate, usually ahead of production. Install with `brew install appvia/wayfinder/wf-dev` to test an upcoming release. |

`wf-dev` installs the same `wf` binary, so it conflicts with `wf`. Install one
or the other, not both.

## How this tap is maintained

The formulae are updated automatically by the Wayfinder release pipeline (see
the `release-publish-latest` and `release-promote-prod` workflows in
`appvia/wayfinder`). Every update is verified by installing and testing the
formula on macOS and Linux before it is pushed here, so manual edits will be
overwritten on the next release.
