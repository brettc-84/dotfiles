# Brett's Dotfiles

These are my dotfiles, targetting macOS. Copied and modified with inspiration from https://github.com/rick-roche/dotfiles.git and https://github.com/webpro/dotfiles.

## TODO:
- [ ] Update for zsh issues (and/or set system bash version correctly)
- [ ] Fix menu bar changes
- [ ] Dock changes
- [ ] Tests

## Getting Started

These resources helped me understand the concepts and advantages of managing dotfiles.

* [Getting started with dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789) ([L. Kappert](https://github.com/webpro))
* [Getting started with dotfiles](https://medium.com/@driesvints/getting-started-with-dotfiles-76bf046d035c) ([D. Vints](https://github.com/driesvints))
* [Setting Up a Mac Dev Machine From Zero to Hero With Dotfiles](https://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles--net-35449); [Part 2](https://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles-part-2--cms-23145)

### Prerequisites

Given a fresh install of MacOS

```sh
sudo softwareupdate -i -a
xcode-select --install
```
The above will install updates and Xcode command line tools (git, gcc, cpp, make, etc) without the need to install the whole Xcode IDE.

### Installing

Clone the repo

```sh
git clone https://github.com/brettc-84/dotfiles.git ~/.dotfiles
source ~/.dotfiles/install.sh
```

## Acknowledgments

* [Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io)
* [Rick Roché's .files](https://github.com/rick-roche/dotfiles)
* [webpro's .files](https://github.com/webpro/dotfiles)
