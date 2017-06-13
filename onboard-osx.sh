#!/bin/bash

# Install xcode-tools
xcode-select --install

# Install ansible
sudo easy_install pip
sudo pip install ansible

# Provision with ansible
# TODO:
#  - ensure that dotfiles haven't changed since privisioning
#  - ensure that brew list hasn't changed since privisioning
ansible-galaxy install -r requirements.yml && ansible-playbook main.yml -i inventory -K
