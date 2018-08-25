# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
HOST=$(hostname -s)
DATE=`date +%Y-%m-%d:%H:%M:%S`
#PS1='\[\033[0;32m\]\u@${HOST:10:2} \w\n\[\033[0m\]~> '
#PS1='\[\033[0;32m\]\u@${HOST} \[\033[1;33m\]\w\n\[\033[0m\]~> '
PS1='\[\033[0;32m\]\u@${HOST} \[\033[0;31m\]`date +%Y-%m-%d` \[\033[0;34m\]`date +%H:%M:%S` \[\033[1;33m\]\w\n\[\033[0m\]~> '

#alias python=/usr/local/bin/python
alias ss=spark-submit

alias forest='clear; ps -ef --forest | grep nick | grep -v grep | grep -v "ps -ef --forest"'
alias running='while true; do clear; forest; sleep 5s; done'

# spark stuff
#export SPARK_HOME=/usr/hdp/2.4.0.0-169/spark
#export PYTHONPATH=$SPARK_HOME/lib/spark-assembly-1.6.0.2.4.0.0-169-hadoop2.7.1.2.4.0.0-169.jar:$PYTHONPATH
#export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH
#export PYTHONPATH=$SPARK_HOME/python/lib/pyspark.zip:$PYTHONPATH
#export PYTHONPATH=$SPARK_HOME/python/:$SPARK_HOME/python/build:$PYTHONPATH
#export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH
#export PATH=$PATH:$SPARK_HOME/bin
#PATH=$JAVA_HOME/bin:$SPARK_HOME/bin:$PATH

alias grep='grep --color=auto'

# various ls
#alias ls='ls --group-directories-first -lhF --color=always'
alias ll='ls --group-directories-first -lhF --color=always'
alias clsh='clear ls -lh'
alias lf='python ~/python/bin/lf_ls.py'
alias du='du -h'

# hdfs cmds
alias hdu='hdfs dfs -du -h'
alias hls='hdfs dfs -ls'
alias hlsr='hdfs dfs -ls -R'
alias hmkdir='hdfs dfs -mkdir'
alias hcat='hdfs dfs -cat'

#  reload bashrc
alias src='source ~/.bashrc'

LS_COLORS=$LS_COLORS:'di=0;35:'; export LS_COLORS

alias digi='sudo su - digicast'
alias go='source ~/digital_forecasting/venv/bin/activate; cd ~/digital_forecasting;'

export PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/nick/.local/bin:/home/nick/bin:/home/nick/.vimpkg/bin:~/anaconda3/bin:$PATH

