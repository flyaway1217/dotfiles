# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/flyaway/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#
alias ll="ls -ahlF"

alias DO='ssh flyaway@104.236.134.157'

alias lab='ssh yichuz@lab2-1.eng.utah.edu'

alias runblog='cd ~/workspace/Git/CNBlog/;hexo server'

alias runenblog='cd ~/workspace/Git/ENBlog/;hexo server'

alias course='cd ~/Dropbox/Utah/Courses/'

alias dirblog='cd ~/workspace/Git/CNBlog/'

alias direnblog='cd ~/workspace/Git/ENBlog/'

alias dirlog='cd ~/workspace/Git/ResearchLog-2019/Log/'

alias linedir='cd ~/workspace/Git/Linear-Algebra-Done-Right-Notes/'

alias dirweek='cd ~/workspace/Git/MorningDiary/Diary/'

alias dirpaper='cd ~/workspace/Git/papers/'

alias mypaper='cd ~/workspace/Git/MyPapers/'

alias WSABIE='cd ~/workspace/Git/WSABIE/wsabie'

alias workdir='cd ~/workspace'

alias reportdir='cd ~/Dropbox/组内日常/讨论记录'

alias build='python setup.py sdist bdist_wheel'

alias upload='twine upload dist/* --skip-existing'

alias workserver='ssh flyaway@psmith.cs.utah.edu'

alias gpuserver='ssh yichuz@medusa.sci.utah.edu'

alias MLnote='cd ~/workspace/Git/machine-learning-notes/'


# alias nosetest='nosetests --with-coverage --cover-html --cover-html-dir=htmlcov -v'

alias ctags="`brew --prefix`/bin/ctags"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
# PATH="~/Library/Haskell/bin:${PATH}"
# export PATH


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# function git_branch {
#    branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
#    if [ "${branch}" != "" ];then
#        if [ "${branch}" = "(no branch)" ];then
#            branch="(`git rev-parse --short HEAD`...)"
#        fi
#        echo " ($branch)"
#    fi
# }

