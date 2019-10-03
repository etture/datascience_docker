alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias spvc="supervisorctl"
alias spvd="supervisord -c"

alias jupyter-notebook="jupyter notebook --allow-root"

alias hadoop-format="$HADOOP_HOME/bin/hdfs namenode -format"
alias hadoop-start="$HADOOP_HOME/sbin/start-dfs.sh; $HADOOP_HOME/sbin/start-yarn.sh"
alias hadoop-stop="$HADOOP_HOME/sbin/stop-yarn.sh; $HADOOP_HOME/sbin/stop-dfs.sh" 
