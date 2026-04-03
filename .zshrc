# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zinit
# source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
source /opt/homebrew/opt/zinit/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit ice depth=1
zinit light romkatv/powerlevel10k
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
# zsh-autosuggestions
ZSH_AUTOSUGGEST_USE_ASYNC=1
if is-at-least 5.3; then
  zinit ice silent wait'1' atload'_zsh_autosuggest_start'
fi
zinit light zsh-users/zsh-autosuggestions
zinit light simnalamburt/cgitc
ZSH_EXPAND_ALL_DISABLE=word
zinit light simnalamburt/zsh-expand-all
autoload -Uz compinit
compinit

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases
alias ls='lsd'
alias l='lsd -al'
alias ll='lsd -l'
alias vi='nvim'
alias vim='nvim'

# Update PATH
export PATH="\
${HOME}/.cargo/bin:\
/opt/homebrew/bin:\
/opt/homebrew/opt/ruby/bin:\
/opt/homebrew/lib/ruby/gems/3.2.0/bin:\
/opt/homebrew/opt/gnu-tar/libexec/gnubin:\
${HOME}/go/bin:\
${PATH}"

# mysql path
export DYLD_LIBRARY_PATH=/opt/homebrew/opt/mysql@8.0/lib:$DYLD_LIBRARY_PATH

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

export PATH=$HOME/.gem/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Android
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export REACT_EDITOR=webstorm

# rustup
. "$HOME/.cargo/env"

# fzf
source <(fzf --zsh)

# secretive config
export SSH_AUTH_SOCK=/Users/devshin/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

# age encryption & decryption
if (( $+commands[age] )); then
  function encrypt() {
    age \
      -r age1se1qwvyt34m3vt55rmcad3xh3yeqs20pspx6wytdmt7sd85t9au5ykf6dq2rfr \
      -r age1yubikey1qvzwp205hyndf9u02mcv9kfzgfzukem6vledj255clq6pgut97wm2d3dt2l \
      -r age1yubikey1qwsq6sjurjm902mgwenlzgmy399fvrtsmmqygue46dydhnhcvu7kvfqk250 \
      "$@"
  }
  function decrypt() { age -d -i ~/.config/age/k "$@" }
fi

if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi

# bun completions
[ -s "/Users/devshin/.bun/_bun" ] && source "/Users/devshin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
