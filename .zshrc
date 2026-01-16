# ============================================
# Source Aliases
# ============================================
source $HOME/.zsh_alias.zsh

# ============================================
# Language and Locale
# ============================================
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ============================================
# PATH Configuration
# ============================================
# Custom script directories
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:$HOME/Personal/bin"

# Homebrew tools
export PATH="/usr/local/opt/openssl@1.1/bin:/usr/local/opt/mysql@8.0/bin:$PATH"

# ============================================
# Language Version Managers
# ============================================

# Ruby (rbenv)
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Python (pyenv)
eval "$(pyenv init -)"
compctl -K _pyenv pyenv

# Node.js (nvm)
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go (asdf)
# asdf is used for Go version management
. /usr/local/opt/asdf/libexec/asdf.sh

# Dart (pub)
export PATH="$PATH:$HOME/.pub-cache/bin"

# ============================================
# Java Configuration
# ============================================
# Java (OpenJDK installed by Homebrew)
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH="/usr/local/opt/openjdk/bin:$PATH"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home"
# export PATH="$JAVA_HOME/bin:$PATH"
export JAVA_HOME="/usr/local/opt/openjdk@17"
export PATH="$JAVA_HOME/bin:$PATH"

# ============================================
# Android Development
# ============================================
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$PATH"

# ============================================
# Zsh Completions
# ============================================
# Custom zsh completions
fpath=(~/.zsh/completion $fpath)

# Docker CLI completions
fpath=($HOME/.docker/completions $fpath)

# Dart CLI completions
[[ -f $HOME/.dart-cli-completion/zsh-config.zsh ]] && . $HOME/.dart-cli-completion/zsh-config.zsh || true

# Initialize completions (only once at the end)
autoload -Uz compinit && compinit -i

# ============================================
# Git Integration
# ============================================
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%b'

# ============================================
# Custom Prompt
# ============================================
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
