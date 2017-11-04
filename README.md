# my-provisioning_playbook
This repo is to house a cookbook to quickly configure and setup any workstation (Linux or Mac) with specific applications, dotfiles, and the overall tools that I prefer to use when doing development work. Currently I've only built out the OS X side of it.

The provisioning step (instead of just being a bash script) is contained in the Makefile, to see the targets just run `make`.

## Process:
1. clone repo to new machine
2. run `make provision` to install dependecies for ansible and provision the laptop with this run book

##TODO (in no particular order)
* Add post_task for ssh-key gen and keychain addition
* Language Environment Managers (RVM, NVM, VirtualEnv, etc)
* after install script to open the applications installed and ensure they work

### System and App Configuration

Linux only
* change backspace to \ and vice-versa
* Redshift

OS X only
* Dock icons - terminal command
* karabiner prefs

##Reference
* https://github.com/geerlingguy/mac-dev-playbook
* https://github.com/MWGriffin/ansible-playbooks 
* https://github.com/geerlingguy/macos-virtualbox-vm
* http://sourabhbajaj.com/mac-setup/index.html
