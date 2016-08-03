# my-provisioning_cookbook
This repo is to house a cookbook to quickly configure and setup any Linux distro with specific applications, dotfiles, and just overall tools that I prefer to use when doing development work. It is currently under development.

## Process:
1. clone repo to new machine
2. run `./onboard-<os>.sh` to install dependecies for chef on that machine
3. chef cookbook to provision the machine correctly

##TODO (in no particular order)
* dotfile clone and copy from repo (this would probably be done last so it would not be overwritten by all the dependecies)
* development repo's clone
* git
* zsh 
  * zplug (the zsh package manager)
  * oh-my-zsh
* tmux
* vim (maybe NeoVim?)
  * vim-plug
* version managers
  * RUBY: chruby + ruby-install + ruby
    * bundler
    * rspec
  * PYTHON: virtualenv + python
  * NODE: nvm + node (you never know haha)

### System Configs

Linux only

OS X only
* cursor movement speed for OS X - terminal command
* Dock icons - terminal command

### Terminal configs

### Applications
* a better terminal (iTerm2 or Guake?)
* postgres
* virtualbox
* vagrant
* spotify
* f.lux or equivalent
* caffeine or equivalent
* Firefox + bookmarks + extensions
* KeePassX password database
* Dropbox
* Slack
* Boostnote

Linux only

OS X only
* karabiner

##Reference
* https://github.com/mattstratton/workstation-cookbook
* http://ryanbigg.com/2014/10/ubuntu-ruby-ruby-install-chruby-and-you//
* https://github.com/cowboy/dotfiles
* http://technology.customink.com/blog/2012/05/28/provision-your-laptop-with-chef-part-1/
* http://blog.palcu.ro/2014/06/dotfiles-and-dev-tools-provisioned-by.html
* http://sidekicksrc.com/post/if-you-love-automation-why-is-your-development-environment-manual/
* http://stackoverflow.com/questions/16189452/where-should-dotfiles-go-in-a-collection-of-chef-cookbooks
* https://www.thoughtworks.com/insights/blog/puppet-and-vagrant-how-provision-machines-your-project
* https://github.com/bltavares/vagrant-baseline/blob/master/puppet/modules/baseline/manifests/dotfiles.pp
