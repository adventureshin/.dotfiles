# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zinit
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit ice depth=1
zinit light romkatv/powerlevel10k
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light simnalamburt/cgitc
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
export PATH="${HOME}/go/bin${PATH+:$PATH}";
