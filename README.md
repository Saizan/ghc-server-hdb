# GHC Server + Haskell Debugger demo

This repo contains `ghc-server-hdb`, a variation of `ghc-server` with debugging support, and a few demo projects under `demos/`.

## Usage

Once the requirements are met (see below), `ghc-server-hdb` can be started with
```
$ ./ghc-server-hdb.sh [--verbose] [--cabal] demos/<project-root>
```
`cabal` will build the necessary packages and start the server in the foreground.

- `--verbose` enables debug logging.
- `--cabal` is needed for demos that are cabal packages.

See `.vscode/launch.json` for debug configurations corresponding to the
different demo projects. Might need to be adapted if using other editors.

The units will be compiled automatically when you start the debug session,
they can also be compiled in advance with `cabal run ghc-client`.

## Requirements

Requires GHC-9.14 with two patches:
  1. ModBreaks stored in .hi files (will be included in 9.14.2).
  2. Breakpoints allowed regardless of backend.

The branch `ghc-server-hdb` of `https://gitlab.haskell.org/trac-Saizan/ghc.git` provides one
```
git clone --branch ghc-server-hdb --single-branch --depth 1 https://gitlab.haskell.org/trac-Saizan/ghc.git
```
It's recommended to build a binary distribution and then use ghcup for the installation.
