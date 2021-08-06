# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
autoload bashcompinit
autoload vnc
bashcompinit

# Path to your oh-my-zsh installation.
export ZSH="/home/jungyongchoi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
# plugins=(git)
autoload -U compinit && compinit
bindkey '\e' autosuggest-accept

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias ls="ls --color=auto"
alias buildamp='bitbake lib32-audio-adaptation-layer-amplifier -C configure'
alias builddelay='bitbake lib32-audio-adaptation-layer-delay-gain -C configure'
alias buildse='bitbake lib32-audio-adaptation-layer-soundengine -C configure'
alias audiodcode='cd /home/jungyongchoi/oe-server2/code_jcl4tv/audiod-pro'
alias aodcode='cd /home/jungyongchoi/oe-server2/code_jcl4tv/audiooutputd-pro'
alias dockeraudiod='cd /home/jungyongchoi/oe-server2/work/audiod-pro'
alias dockerumi='cd /home/jungyongchoi/oe-server2/work/umi-pro'
alias testaudiod='cd /home/jungyongchoi/oe-server2/code_jcl4tv/audiod_test/audiod-pro'
alias umicode='cd /home/jungyongchoi/oe-server2/code_jcl4tv/umicode/umi-pro'
alias log='cd /home/jungyongchoi/log'
alias copylog='cp /home/jungyongchoi/analyser_log/*.py ./'
alias cd....='cd ../..'
alias cd..='cd ..'
alias python='python3'
alias dev='cd ~/share/dev'
alias algo2='cd ~/share/dev/algorithm_data_structure/c_algorithm_2'
alias moe='source ~/mount-oeserver.sh'
alias autotest='cd /home/jungyongchoi/oe-server2/automation-tests'
#alias vi='~/nvim.appimage'
alias vi='~/nvim.appimage'
alias vim='~/nvim.appimage'
# alias vi='nvim'

alias svi='sudo ~/nvim.appimage'
alias svim='sudo ~/nvim.appimage'
alias gp='git pull'

# type emulate >/dev/null 2>/dev/null || alias emulate=true

function push()
{
    git push origin HEAD:refs/for/$1;
}

function comp()
{
    bitbake lib32-$1 -C compile;
}

function confi()
{
    bitbake lib32-$1 -C configure;
}

function branch()
{
    git branch -a | grep $1;
}

# function gc()
# {
# 	git checkout $1;
# }
#function gc()
#{
#    # emulate -L ksh
#    # ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#    #
#    # echo $(git checkout "$1")
#	git checkout $1;
#}
alias gc='git checkout'
alias gs='git status'
alias gm='git commit -m'
alias gd='git diff'
alias gma='git commit --amend'
alias gr='git reset --hard HEAD~3 && git pull'
alias gau='git add -u'
alias gaa='git add --all'

function del()
{
   rm -rf *.pyc
}
~
source "/home/jungyongchoi/mount-oeserver.sh"
export EDITOR='~/nvim.appimage'
export VISUAL='~/nvim.appimage'
# export BAT_THEME="onedark"
# export EDITOR=vi
# export VISUAL=vi

# source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
