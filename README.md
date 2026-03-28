# Homebrew Tap for DaoFlow

Official [Homebrew](https://brew.sh) tap for the **DaoFlow CLI** — a self-hosted deployment platform that makes Docker Compose production-ready.

## Installation

```bash
brew install daoflow-dev/daoflow/daoflow
```

Or add the tap first:

```bash
brew tap daoflow-dev/daoflow
brew install daoflow
```

## Upgrading

```bash
brew upgrade daoflow
```

## How It Works

This tap is automatically updated by [GitHub Actions](https://github.com/DaoFlow-dev/DaoFlow/blob/main/.github/workflows/update-homebrew.yml) whenever a new DaoFlow release is published. The formula points to pre-compiled CLI binaries for:

| Platform | Architecture |
|----------|-------------|
| macOS | Apple Silicon (arm64) |
| macOS | Intel (x64) |
| Linux | arm64 |
| Linux | x64 |

## Links

- [DaoFlow Repository](https://github.com/DaoFlow-dev/DaoFlow)
- [Releases](https://github.com/DaoFlow-dev/DaoFlow/releases)
- [Documentation](https://daoflow.dev)
