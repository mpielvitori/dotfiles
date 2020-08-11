# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LC_ALL=en_US.UTF-8
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
#export PATH=$PATH:~/apache-maven-3.6.0/bin:$JAVA_HOME/bin:$GEMFIRE/bin:/usr/local/sbin:/usr/local/Cellar/rabbitmq/3.7.12/sbin
HISTFILE=~/.zsh_history
SAVEHIST=100

ZSH_THEME="powerlevel10k/powerlevel10k"
# P9K_MODE='nerdfont-complete'
P9K_MODE='awesome-mapped-fontconfig'

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(zsh-completions zsh-syntax-highlighting)
autoload -U compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ZPlug installation
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi
source ~/.zplug/init.zsh

# Register plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# -------------------------------------------------
#                      Alias
# -------------------------------------------------

# Gollum alias
alias docker-gollum='docker run -it --rm --name gollum \
  -p 4567:4567 \
  -v $(pwd):/root/wikidata winkapp/docker-gollum  \
  --allow-uploads --live-preview'

# Git alias
alias glog='git log --oneline --graph --decorate --all'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gsh='git stash'
alias gd='git diff'
alias gdt='git difftool'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcd='git checkout dev'
alias gcs='git checkout stage'
alias gp='git pull --rebase origin'
alias gfm='git fetch origin master'
alias gfd='git fetch origin dev'
alias gfo='git fetch origin'
alias gfa='git fetch --all'
alias grm='git rebase origin/master'
alias grd='git rebase origin/dev'
alias gfp='git fetch --all --prune'

# Docker alias
alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dpsa='docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dimg='docker images'

alias lc="colorls --sd -A"
