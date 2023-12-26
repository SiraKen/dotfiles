setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
setopt list_packed
setopt correct
setopt auto_cd

autoload -Uz colors && colors
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors ''

alias g='git'
alias gs='git status'
alias cls='clear'
alias vim='nvim'

export CLICOLOR=true

export SSH_AUTH_SOCK="$HOME/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"
export VOLTA_HOME="$HOME/.volta"
export GOPATH="$HOME/go"

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/Developer/flutter/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.progate/bin:$PATH"

if [ -e "$HOME/Library/Android/sdk" ]; then
  export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
fi

if [ -e "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

if [ -e "$HOME/.deno" ]; then
  export PATH="$HOME/.deno/bin:$PATH"
fi

if [ -e "$HOME/Library/Application Support/JetBrains/Toolbox" ]; then
  export PATH="$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
fi

if [ -f "$HOME/Developer/google-cloud-sdk/path.zsh.inc" ]; then
  . "$HOME/Developer/google-cloud-sdk/path.zsh.inc";
fi
if [ -f "$HOME/Developer/google-cloud-sdk/completion.zsh.inc" ]; then
  . "$HOME/Developer/google-cloud-sdk/completion.zsh.inc";
fi

if type ng &>/dev/null; then
  source <(ng completion script)
fi

if type direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

eval "$(starship init zsh)"

