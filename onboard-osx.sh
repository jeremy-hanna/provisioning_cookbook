#!/bin/bash

# BEGIN DEPENDENCIES.
# This is just to get chef up and running

# Install xcode-tools
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Install latest Ruby to use Chef: chruby + ruby-install
# (sources will be added when the dotfiles are pulled)
brew install chruby
brew install ruby-install
sudo ruby-install ruby

# Always have bundler.
gem install bundler
