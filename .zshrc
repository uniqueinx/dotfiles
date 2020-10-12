# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#  _____    _
# |__  /___| |__  _ __ ___
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__
# /____|___/_| |_|_|  \___|

# Aliases for a few useful commands
alias pacmanGhost='~/.scripts/pacman.sh'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ip='ip -c'
alias rm='rm -i'
alias x='ranger'
alias c='cmus'
alias h='htop'

alias flash='cd ~/envs/telegram-bot/flash_delivery'
alias shopper='cd ~/envs telegram-bot/nana-matajer'
alias ggg='git-big-picture -v viewnior'
alias dcc='docker ps -aq  | xargs -n1 docker rm -f'
alias nam='cd /home/vex/envs/telegram-bot/matajer/nana-matajer'
alias agrf='k logs -f $(k get pod | grep agents | cut -d" " -f1) | grep "ERROR"'
alias agr='k logs $(k get pod | grep agents | cut -d" " -f1) | grep "ERROR"'

alias datagrip='~/DataGrip-2020.2.2/bin/datagrip.sh  > /dev/null 2>&1 & disown'

# Show OS info when opening a new terminal
#neofetch

# Set oh-my-zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"
DISABLE_LS_COLORS="true"

# Plugins to load
plugins=(
    docker
    docker-compose
    git
    gitfast
    history-substring-search
    safe-paste
    tmux
    zsh-autosuggestions
    zsh-completions
    zsh-history-substring-search
    zsh-syntax-highlighting
    fzf
)

setopt HIST_IGNORE_SPACE
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/vex/google-cloud-sdk/path.zsh.inc' ]; then . '/home/vex/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/vex/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/vex/google-cloud-sdk/completion.zsh.inc'; fi


export KUBECONFIG=$HOME/envs/telegram-bot/stage_kubeconfig
alias k=kubectl
complete -F __start_kubectl k

# Completion for kitty
#kitty + complete setup zsh | source /dev/stdin

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$JAVA_HOME/bin:$PATH
