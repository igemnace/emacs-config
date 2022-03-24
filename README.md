# my-emacs-config

Easy way to transfer my Emacs configuration across multiple machines.

## Pre-Installation

Make sure that your machine satisfies the following:
- Is using GNU/Linux (scripts are untested on other UNIX systems and will
  flat-out fail on Windows)
- Has Emacs 24 or higher (required by ELPA and the package system)
- Has no pre-existing `.emacs.d` (backup and remove if existing)
- Has env, bash, and git (required by install scripts)
- Has a working internet connection (will be installing packages)

## Installation

Just run `./install`. This will automatically do the following:
- Symlink `.emacs.d` into your home directory (`install-emacsd`)

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is open source, licensed under MIT.

Do you remember this project being Unlicensed? Read more about the license
change [here][license-change].

[license-change]: https://github.com/igemnace/dotfiles/issues/2
