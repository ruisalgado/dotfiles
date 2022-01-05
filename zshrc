export ZSH=~/.oh-my-zsh
export PATH=$HOME/bin:$PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=nvim

# disable logout with ctrl+d
setopt IGNORE_EOF

ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast tmux fzf)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.zsh/settings.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/tools.zsh
