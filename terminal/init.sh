ulimit -n 200000

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Register all aliases
for aliasToSource in "~/.dotfiles/terminal/_aliases/"*; do source "$aliasToSource"; done
# Register all exports
for exportToSource in "~/.dotfiles/terminal/_exports/"*; do source "$exportToSource"; done
# Register all functions
for functionToSource in "~/.dotfiles/terminal/_functions/"*; do source "$functionToSource"; done
