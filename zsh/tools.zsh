# DIRENV
eval "$(direnv hook zsh)"

# HOMEBREW
[ -d `brew --prefix` ] && path=($path `brew --prefix`/bin)

# Z
[ -f `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh

# ASDF
[ -f `brew --prefix`/opt/asdf/libexec/asdf.sh ] && . `brew --prefix`/opt/asdf/libexec/asdf.sh
[ ~/.asdf/plugins/java/set-java-home.zsh ] && . ~/.asdf/plugins/java/set-java-home.zsh

# RUBYGEMS
[ -d "$HOME/.gem" ] && export GEM_HOME="$HOME/.gem" && path=($path "$GEM_HOME/bin")

# FZF
[ -f ~/.fzf.zsh ] && . ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

##
# Visual Studio Code
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}
##

# BROOT
[ -f ~/.config/broot/launcher/bash/br ] && . ~/.config/broot/launcher/bash/br

# ANDROID
if [[ -d ~/Library/Android/sdk ]]
then
    export ANDROID_HOME=~/Library/Android/sdk
    path=($path ~/Library/Android/sdk/tools)
    path=($path ~/Library/Android/sdk/platform-tools)
    path=($path ~/Library/Android/sdk/build-tools/33.0.2) # note the specific version of build-tools being used
fi

