# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam2

#if [ -s "$HOME/.zsh.git" ] && source "$HOME/.zsh.git"
#PROMPT="$PROMPT `rprompt-git-current-branch`"

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -F'

    alias grep="grep --color=auto --exclude='tags' --exclude='*.svn-*' --exclude='entries'"
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

fi

alias rm='rm -i'
alias diff='colordiff'
alias sqlite3='rlwrap sqlite3'

# 履歴ファイルに時刻を記録
setopt extended_history

# シェルのプロセスごとに履歴を共有
setopt share_history

# 複数の zsh を使用するときに履歴を追加する
setopt append_history

# コマンドが入力されるとすぐに追加
setopt inc_append_history

# 直前と同じコマンドラインはヒストリーに追加しない
setopt hist_ignore_dups

# 重複したヒストリーは追加しない
setopt hist_ignore_alldups

# ヒストリーを呼び出してから実行する前に一旦編集できるようにする
setopt hist_verify

# pushd する時に同一ディレクトリを除去
setopt pushd_ignore_dups

# 補完候補が複数ある時に、一覧表示
setopt auto_list

# auto_list の一覧で、ls -F のようにファイルの種類をマーク表示
setopt list_types

# rm * 実行時に確認
setopt rmstar_wait

# かっこの対応を自動的に保管
setopt auto_param_keys

# ディレクトリ保管時に / を付加
setopt auto_param_slash

# cd で自動的に pushd
setopt auto_pushd

# ファイル名の展開でディレクトリにマッチした場合に末尾に / を付ける
setopt mark_dirs

# 8ビット目を通すようにする
setopt print_eightbit

# Ctrl+w で直前の / までを削除する
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# ディレクトリ名だけで移動する
setopt auto_cd

# C-s C-q を無効
setopt no_flow_control


# Load nvm
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  source "$HOME/.nvm/nvm.sh"
  nvm use default > /dev/null
  export NODE_PATH=${NVM_PATH}_modules
fi

# bundler-exec
[ -s "$HOME/.bundler-exec.sh" ] && . "$HOME/.bundler-exec.sh"

# perlbrew
[ -s "$HOME/perl5/perlbrew/etc/bashrc" ] && . "$HOME/perl5/perlbrew/etc/bashrc"

# git-completion
autoload bashcompinit
bashcompinit
[ -s "$HOME/.git-completion.sh" ] && . "$HOME/.git-completion.sh"
[ -s "$HOME/.git-flow-completion.zsh" ] && . "$HOME/.git-flow-completion.zsh"

