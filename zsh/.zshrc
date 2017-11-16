# zgen
source "${HOME}/.zgen/zgen.zsh"
export ZGEN_RESET_ON_CHANGE=($HOME/.zshrc)

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen prezto
  zgen prezto prompt theme 'pure'
  zgen prezto '*:*' case-sensitive 'yes'
  zgen prezto '*:*' color 'yes'
  zgen prezto command-not-found
  zgen prezto syntax-highlighting
  zgen prezto tmux
  # zgen prezto tmux:auto-start local 'yes'

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions
  zgen load mollifier/anyframe
  zgen load junegunn/fzf shell
  zgen load sindresorhus/pretty-time-zsh

  # generate the init script from plugins above
  zgen save
fi

# direnv
eval "$(direnv hook zsh)"

# autoload -Uz add-zsh-hook
# add-zsh-hook precmd newline-after-command
# function newline-after-command() {
#   print ''
# }

if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$PATH:/opt/yarn-[version]/bin"