# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# All zsh plugins (Generated via Antibody)
[ -f ~/.zsh_plugins.zsh ] && source ~/.zsh_plugins.zsh

# Custom aliases
[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# screen
export SCREENDIR=$HOME/.screen


# The following lines were added by compinstall

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' group-name '' # results by category
zstyle :compinstall filename '/home/schneider/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zmodload -i zsh/complist


# Keybindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^[[3~' delete-char
bindkey '^[[3;5~' delete-char


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install


# Further Zsh settings
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
