export RSENSE_HOME=/usr/local/share/rsense
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
C_INCLUDE_PATH=$C_INCLUDE_PATH:$TOKYO_CABINET_BASE/include
export LD_LIBRARY_PATH
export C_INCLUDE_PATH
export PATH=$PATH:$TOKYO_CABINET_BASE/bin

# for android
export ANDROID_HOME=/home/kozaki/android-sdk-linux
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# EDITOR
export SVN_EDITOR=emacsclient
export EDITOR=emacsclient
export VISUAL=emacsclient

# Maven
export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.4
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$PATH:$M2

# Play!
export PLAY_HOME=/usr/local/share/play-1.2.4/
export PATH=$PATH:$PLAY_HOME

# scala
export SCALAHOME=/usr/local/share/scala-2.9.1.final/

# ant
export ANT_HOME=/usr/local/apache-ant/apache-ant-1.8.4/
export PATH=$PATH:$ANT_HOME/bin

# Perl
export PERL_LOCAL_LIB_ROOT=${HOME}/perl5
export MODULEBUILDRC=${HOME}/perl5/.modulebuildrc
export PERL_MB_OPT="--install_base ${HOME}/perl5"
export PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"
export PERL5LIB=${HOME}/perl5/lib/perl5:${HOME}/perl5/lib/perl5/x86_64-linux-gnu-thread-multi
export PATH=$PATH:${HOME}/perl5/bin


# ruby tools
export JEWELER_OPTS='--rspec'

# Java
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin/:$JAVA_HOME/jre/bin

# Eclipse
export PATH=$PATH:/usr/local/share/eclipse

# rbenv
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"
