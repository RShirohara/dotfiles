DOTPATH     := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES  := $(wildcard .??*)
EXCLUSIONS  := .DS_Store .git .gitmodules
DOTFILES    := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL   := help

list: ## Show dot files in this repository.
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

init: ## Initialize this repository.
	@echo "Git Submodule update..."
	@git submodule update --init --recursive
	@echo "Vim plugin install..."
	@vim +PlugClean! +PlugUpdate +qall
	@echo "Initialize..."
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/init/init.sh

install: ## Create symlink to home directory.
	@echo 'Start to deploy dotfiles to home directory...'
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@ln -sfnv $(abspath bin) $(HOME)/.local/bin

clean: ## Remove the dot files and this repository.
	@echo 'Remove dot files in your home directory...'
	@-$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)
	@-rm -vrf $(HOME)/.local/bin

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
