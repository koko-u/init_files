# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export CLASSPATH=$JAVA_HOME/lib/tools.jar

# scala
export ACTIVATOR_HOME=/usr/local/share/activator
export PATH="$PATH:$ACTIVATOR_HOME"
export SCALA_HOME=$HOME/.sbt/boot/scala-2.11.5

export PATH="$PATH:/usr/local/share/sbt/bin"

# maven
export M2_HOME=$HOME/netbeans8/java/maven
export PATH="$PATH:M2_HOME/bin"
if [ -f ~/mvncolor.sh ]; then
    . ~/mvncolor.sh
fi

# clojure
export PATH="$PATH:$HOME/bin"

# plenv
export PATH="$PATH:$HOME/.plenv/bin"
eval "$(plenv init -)"
