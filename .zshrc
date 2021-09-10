zmodload zsh/zprof

export ZSH="/home/vex/.oh-my-zsh"

#ZSH_THEME="spaceship"
ENABLE_CORRECTION="true"

# Plugins to load
plugins=(
    docker
    docker-compose
    git
    gitfast
    history-substring-search
    safe-paste
    # tmux
    zsh-autosuggestions
    zsh-completions
    zsh-history-substring-search
    zsh-syntax-highlighting
    fzf
    autojump
)


setopt HIST_IGNORE_SPACE
# autoload -U compinit && compinit -u
source $ZSH/oh-my-zsh.sh



pycharm(){
	~/Tools/pycharm-2020.2.1/bin/pycharm.sh $1 > /dev/null 2>&1 & disown 
}

say_(){
	echo $@ | festival --tts
}

# reset_stage_(){
# 	kubectl -n staging get pods | grep backend | awk '{print $1}' | xargs -I {} kubectl -n staging delete pods {}
# }

switch_cluster(){
    kubectl config use-context $1
}

switch_project(){
    gcloud config set project $1
}

envname(){
    NAMESPACE=$1
}

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ip='ip -c'
alias rm='rm -i'
alias x='lf'
# alias c='cmus'
alias h='htop'
alias v='nvim'
alias n='nano'

alias ggg='git-big-picture -f png -v feh'
alias dcc='docker ps -aq  | xargs -n1 docker rm -f'

alias datagrip='fix_jetbrains.sh; ~/Tools/DataGrip-2020.2.2/bin/datagrip.sh  > /dev/null 2>&1 & disown'
alias post='~/Postman/Postman > /dev/null 2>&1 & disown'
alias charm='pycharm'
alias say='say_'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/vex/google-cloud-sdk/path.zsh.inc' ]; then . '/home/vex/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/vex/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/vex/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(starship init zsh)"
