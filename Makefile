.DEFAULT_GOAL := help

install-dep: ## Install the dependencies to provision
	$(info Installing xcode-tools..)
	@xcode-select --install
	$(info Installing ansible..)
	@sudo easy_install pip
	@sudo pip install ansible

check-dotfiles: ## cd to ../dotfiles and check if dirty
	$(info Checking if dotfiles are dirty..)
	@cd ../dotfiles && if ! git diff --exit-code --quiet; then echo 'Your dotfiles are dirty! Exiting'; exit 1; fi

check-brewlist: ## Make sure current installed brewlist matches what is in the default.config.yml
	@echo 'Checking if brew list changed..'
	@if ! ruby .utility/scripts/brew.rb; then echo 'Warning! Some homebrew packages not included in playbook. Continuing'; fi
	@echo 'Checking if brew cask list changed..'
	@if ! ruby .utility/scripts/brew_cask.rb; then echo 'Warning! Some homebrew casks not included in playbook. Continuing'; fi

provision-test: check-dotfiles ## testing that the dependencies act the way they should?
	$(info Provisioning test echo..)

provision: install-dep check-dotfiles check-brewlist ## Provisions the computer with the playbook if dependency checks pass
	$(info Provisioning requirements..)
	@ansible-galaxy install -r requirements.yml
	$(info Provisioning main playbook..)
	@ansible-playbook main.yml -i inventory -K

.PHONY: help

help:
		@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
