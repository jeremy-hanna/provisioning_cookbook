# my-provisioning_playbook
This repo is to house a cookbook to quickly configure and setup any Linux distro with specific applications, dotfiles, and just overall tools that I prefer to use when doing development work. It is currently under development.

## Process:
1. clone repo to new machine
2. run `./onboard-<os>.sh` to install dependecies for ansible

##TODO (in no particular order)
* SSH key solution
* Password solution
* zsh < w/ zplug (package manager) and oh-my-zsh (theme) >
* tmux
* vim-plug for vim
* Language Environment Managers (RVM, NVM, VirtualEnv, etc)
* after install script to open the applications installed and ensure they work

### System Configs

Linux only
* change backspace to \ and vice-versa

OS X only
* Dock icons - terminal command

### Applications
* postgres
* KeePassX or alternative password database
* Boostnote

Linux only
* Redshift

OS X only
* karabiner prefs

##Reference
* https://github.com/geerlingguy/mac-dev-playbook
* https://github.com/MWGriffin/ansible-playbooks 
* https://github.com/mattstratton/workstation-cookbook
* http://ryanbigg.com/2014/10/ubuntu-ruby-ruby-install-chruby-and-you//
* https://github.com/cowboy/dotfiles
* http://technology.customink.com/blog/2012/05/28/provision-your-laptop-with-chef-part-1/
* http://blog.palcu.ro/2014/06/dotfiles-and-dev-tools-provisioned-by.html
* http://sidekicksrc.com/post/if-you-love-automation-why-is-your-development-environment-manual/
* http://stackoverflow.com/questions/16189452/where-should-dotfiles-go-in-a-collection-of-chef-cookbooks
* https://www.thoughtworks.com/insights/blog/puppet-and-vagrant-how-provision-machines-your-project
* https://github.com/bltavares/vagrant-baseline/blob/master/puppet/modules/baseline/manifests/dotfiles.pp
* https://github.com/joemiller/workstation-bootstrap
* https://github.com/bleything/bootstrap
* http://jtimberman.housepub.org/blog/2011/04/03/managing-my-workstations-with-chef/
* https://gist.github.com/mrtazz/513101
* https://gist.github.com/andrewroycarter/6815905
* https://unwiredcouch.com/2011/08/25/setting-up-workstations-with-chef-newbie-edition.html
