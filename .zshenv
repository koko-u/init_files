export RSENSE_HOME=/usr/local/share/rsense
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk
export SCALA_HOME=/usr/local/share/scala-2.8.1
export MOZ_GLX_IGNORE_BLACKLIST=true

# for ibus-skk
export XIM=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS='@im=ibus'
export XIM_PROGRAM=ibus-daemon
export XIM_ARGS='-r --daemonize --xim'

# for tokyocabinet
TOKYO_CABINET_BASE=/home/kozaki/tokyocabinet
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TOKYO_CABINET_BASE/lib
PATH=$PATH:$TOKYO_CABINET_BASE/bin
C_INCLUDE_PATH=$C_INCLUDE_PATH:$TOKYO_CABINET_BASE/include
export LD_LIBRARY_PATH
export C_INCLUDE_PATH

# for android
export ANDROID_HOME=/home/kozaki/android-sdk-linux_x86/
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# EDITOR
export SVN_EDITOR=emacsclient
export EDITOR=emacsclient
export VISUAL=emacsclient

# Maven
export M2_HOME=/usr/local/share/apache-maven-3.0.3
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$PATH:$M2
