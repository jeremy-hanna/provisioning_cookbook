#!/usr/bin/env ruby

require 'yaml'

playbook_installed = YAML.
  load_file("#{Dir.getwd}/default.config.yml").
  fetch('homebrew_installed_packages') { "not found" }

# playbook_installed.each {|x| p x}
locally_installed = %x(brew leaves).chomp.split(/\n/)

playbook_missing = (locally_installed | playbook_installed) - playbook_installed
locally_missing  = (locally_installed | playbook_installed) - locally_installed
playbook_missing.each {|x| p x}
