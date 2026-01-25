# Dotfiles

Personal dotfiles managed with **GNU Stow**.

This repository contains configuration files for my terminal and editor setup.
Everything is symlinked into place using Stow to keep `$HOME` clean and portable.

## Tools in Use

- **Ghostty** – Terminal emulator
- **Zsh** – Shell
- **Neovim** – Editor
- **Tmux** - Terminal Multiplexer

## Requirements

- Git
- GNU Stow

## Installation

```bash
git clone https://github.com/Cyrus-Gahatraj/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

## Usage

Each directory is a Stow package and mirrors its target location in $HOME.

```bash
stow ghostty zsh nvim
```
