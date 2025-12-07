source $HOME/.zsh_alias.zsh

# -------------------------------
# Language and Locale
# -------------------------------
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# -------------------------------
# Ruby (rbenv)
# -------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# -------------------------------
# Python (pyenv)
# -------------------------------
eval "$(pyenv init -)"
compctl -K _pyenv pyenv

# -------------------------------
# Dart (pub)
# -------------------------------
export PATH="$PATH":"$HOME/.pub-cache/bin"

# -------------------------------
# Node.js (nvm)
# -------------------------------
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Not needed for zsh

# -------------------------------
# Go (asdf)
# -------------------------------
# asdf is used for Go version management
. /usr/local/opt/asdf/libexec/asdf.sh

# -------------------------------
# Java (OpenJDK installed by Homebrew)
# -------------------------------
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH="/usr/local/opt/openjdk/bin:$PATH"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home"
# export PATH="$JAVA_HOME/bin:$PATH"
export JAVA_HOME="/usr/local/opt/openjdk@17"
export PATH="$JAVA_HOME/bin:$PATH"

export PATH=$PATH:~/Library/Android/sdk/platform-tools

# -------------------------------
# Homebrew Tools
# -------------------------------
export PATH="/usr/local/opt/openssl@1.1/bin:/usr/local/opt/mysql@8.0/bin:$PATH"

# -------------------------------
# Zsh completions
# -------------------------------
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# -------------------------------
# Git Integration
# -------------------------------
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%b'

# -------------------------------
# Custom Prompt
# -------------------------------
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# -------------------------------
# Custom Scripts
# -------------------------------
export PATH="$PATH:~/Personal/bin"

# -------------------------------
# Android Studio SDK
# -------------------------------
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$PATH"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/kyoheisakai/.dart-cli-completion/zsh-config.zsh ]] && . /Users/kyoheisakai/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
