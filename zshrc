# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nylar/.oh-my-zsh"

###POWERLEVEL 9K PROMPT & OPTIONS SECTION###
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir status newline custom_python custom_javascript)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ram custom_wifi_signal)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPERATOR=$u'\uE0C0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPERATOR=$u'\uE0C0'        
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
#POWERLEVEL9K_VPN_IP_INTERFACE="tun0"	
zsh_wifi_signal(){
    local signal=$(nmcli device wifi | grep V01D-5G | awk '{print $7}')
    local color='%F{black}'
    [[ $signal -gt 75 ]] && color='%F{black}'
    [[ $signal -lt 50 ]] && color='%F{black}'
echo -n "%{$color%}⭐  $signal%{%f%}" # \uf230 is 
}

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
# Create a custom JavaScript prompt section
POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\uE0C5' Javascript"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="blue"
#Python Prompt
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uE0C0' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="yellow"
#Ruby
POWERLEVEL9K_CUSTOM_RUBY="echo -n '\ue21e' Rb"
POWERLEVEL9K_CUSTOM_RUBY_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_RUBY_BACKGROUND="green"

#set guifont=DroidSansMono\ Nerd\ Font\ 12
#" testing rounded separators (extra-powerline-symbols):
#let g:airline_left_sep = "\uE0B4"
#let g:airline_right_sep = "\uE0B6"
#" set the CN (column number) symbol:
#let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
)

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
alias c="clear"
alias s="sudo"
alias mv="sudo mv"
alias nano="sudo nano"
alias nordvpn-us="nordvpn connect United_States"
alias nordvpn-cz="nordvpn connect Czech_Republic"
alias nordvpn-es="nordvpn connect Estonia"
alias gotop="sudo bash /home/nylar/gotop/scripts/gotop"
alias inst="sudo apt-get install"
