##
# SVN
export SVN_EDITOR=vi
##

##
# X11 and imagemagick
#
export CPPFLAGS=-L/opt/X11/include
export C_INCLUDE_PATH=/usr/local/Cellar/imagemagick/6.7.7-6/include/ImageMagick
##

##
# HOME BIN
##
export PATH=/Users/rusal/bin:$PATH
##

##
# JVM STUFF
export JAVA_HOME=`/usr/libexec/java_home`
export M3_HOME=/usr/local/Cellar/maven/3.1.1
export PATH=$M3_HOME/bin:$PATH
export MAVEN_REPOSITORY=/Users/rusal/.m2/repository
export MAVEN_OPTS="-Xms256m -Xmx1G -XX:MaxPermSize=256m"
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
