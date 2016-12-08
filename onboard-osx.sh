#!/bin/bash

# BEGIN DEPENDENCIES.
# This is just to get chef up and running

# Install xcode-tools
xcode-select --install

# Install ansible
sudo pip install ansible

# Provision with ansible
ansible-galaxy install -r requirements.yml && ansible-playbook main.yml -i inventory -K
