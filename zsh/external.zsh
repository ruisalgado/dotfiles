##
# HOMEBREW
##
export PATH="/usr/local/sbin:$PATH"
if [ -f ~/.homebrew_github_api_token ]; then
    export HOMEBREW_GITHUB_API_TOKEN="$(cat ~/.homebrew_github_api_token)"
fi
##

##
# SVN
export SVN_EDITOR=vi
##

##
# Imagemagick
#
export C_INCLUDE_PATH=/usr/local/Cellar/imagemagick/6.7.7-6/include/ImageMagick
##

##
# HOME BIN
##
export PATH=$HOME/bin:$PATH
##

##
# JVM STUFF
function setjvm {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}
setjvm 1.8

export M3_HOME=/usr/local/Cellar/maven/3.1.1
export PATH=$M3_HOME/bin:$PATH
export MAVEN_REPOSITORY=$HOME/.m2/repository
export MAVEN_OPTS="-Xms256m -Xmx1G -XX:MaxPermSize=256m"
export TOMCAT_HOME=/usr/local/Cellar/tomcat/7.0.54/libexec/
##

##
# CLOJURE
##
export PATH=/Development/leiningen/bin:$PATH
###

##
# NODE
##
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
###

##
# Z
##
if [ -f `brew --prefix`/etc/profile.d/z.sh ]; then
    . `brew --prefix`/etc/profile.d/z.sh
fi
##

##
# CHRUBY
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
##

##
# Haskell & Purescript
export PATH=$HOME/.cabal/bin:$PATH
##

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

