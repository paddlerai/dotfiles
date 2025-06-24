# Git
alias g='git'
alias gl='git pull'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -m'
alias gc.='git checkout .'
alias gcb='git checkout -b'
alias gr.='git reset .'
alias ga='git add .'
alias gd='git diff'
alias grup='git remote update -p'
alias gcom='git checkout main'
alias gst='git stash'
alias gstp='git stash pop'
alias tg="tig"
# Github
alias hb="hub browse"
# Gems
alias be='bundle exec'
alias sp='bundle exec rspec -fd'
alias spd='bundle exec rspec -fd --dry-run --order defined'
alias cb='bundle exec cucumber'
alias ru='bundle exec rubocop'
alias anns='bundle exec annotate --sort'
# Bundler
alias bundle1='bundle _1.17.2_'
# Rails
alias r='bin/rails'
alias rd='bin/rails db'
alias rdm='bin/rails db:migrate'
alias rdms='bin/rails db:migrate:status'
alias rdr='bin/rails db:rollback'
# RAILS_ENV=test
alias rt='bin/rails RAILS_ENV=test'
alias rtd='bin/rails db RAILS_ENV=test'
alias rtdm='bin/rails db:migrate RAILS_ENV=test'
alias rtdms='bin/rails db:migrate:status RAILS_ENV=test'
alias rtdr='bin/rails db:rollback RAILS_ENV=test'
# Heroku
alias hr='heroku'
alias hrl='heroku logs --app'
alias hrlt='heroku logs --tail -app'
alias hrrc='heroku run rails console --app'
# DB
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pgs='pg start'
alias pgp='pg stop'
alias pgr='pg restart'
# exa is a replacement ls, see https://github.com/ogham/exa
alias ls='exa -G'
alias ll='exa -lG'
alias la='exa -laG'
alias lh='exa -abghHliS'
alias lt='exa --long --tree'
# tmux
alias x='tmux'
alias xls='tmux ls'
alias xn='tmux new -s'
alias xa='tmux a -t'
alias xkill='tmux kill-session -t'
alias xkills='tmux kill-server'
alias xcf='tmux source ~/.tmux.conf'
# Flutter
alias flutter="fvm flutter"
# zsh config
alias zshrc='code ~/.zshrc'
alias zshrcload='source ~/.zshrc'
alias zshalias='code ~/.zsh_alias.zsh'
alias zshaliasload='source ~/.zsh_alias.zsh'
# s3cmd
alias s3ls='s3cmd ls'
alias s3get='s3cmd get --force --recursive'
# Unzip
# alias unar='unar'
# Network
alias wifi='networksetup -getinfo Wi-Fi'
alias ip='ipconfig getifaddr en0'
alias ifip='ifconfig en0'
# others
alias aliasf='alias | ag'
alias chr='open -a Google\ Chrome'
alias c='code'
alias c.='code .'
alias hi='me open'
alias ff='find . -name'
alias tl='tree -L 1'

function show_bundlers() {
  for ver in $(rbenv versions --bare); do
    echo "---- Ruby $ver ----"
    RBENV_VERSION=$ver ruby -v
    RBENV_VERSION=$ver gem list bundler
    RBENV_VERSION=$ver gem which bundler
    echo
  done
}
