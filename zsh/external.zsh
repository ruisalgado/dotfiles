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
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
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
# Mou
function mou {
  open /Applications/Mou.app $1
}
##

##
# Haskell & Purescript
export PATH=$HOME/.cabal/bin:$PATH
# ##
