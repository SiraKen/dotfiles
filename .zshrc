export PATH="~/.composer/vendor/bin:$PATH"
export PATH="$PATH:/Users/siraken/Developer/flutter/bin"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

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
  export PATH="/Users/siraken/.deno/bin:$PATH"
fi

if [ -e "$HOME/Library/Application Support/JetBrains/Toolbox" ]; then
  export PATH="$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
fi

# Google Cloud SDK
if [ -f '/Users/siraken/Developer/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/siraken/Developer/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/siraken/Developer/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/siraken/Developer/google-cloud-sdk/completion.zsh.inc'; fi

# fish
if [ -e "$HOME/.config/fish/config.fish" ]; then
  fish
fi
