# my-provisioning_playbook
This repo is to house a cookbook to quickly configure and setup any Linux distro with specific applications, dotfiles, and just overall tools that I prefer to use when doing development work. It is currently under development.

## Process:
1. clone repo to new machine
2. run `./onboard-<os>.sh` to install dependecies for ansible

##TODO (in no particular order)
* [support direnv](https://github.com/direnv/direnv)
* Add post_task for ssh-key gen and keychain addition
* Language Environment Managers (RVM, NVM, VirtualEnv, etc)
* after install script to open the applications installed and ensure they work
* it might be nice to be able to see what has changed from the default package list on a local machine via a script
  - eg. I brew installed limechat on the box, but it is not in the provisioning file
  - or I added to my dotfiles but forgot and didn't push remotely so provisioning will wipe those changes

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
