# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

## User specific environment and startup programs

# Anaconda
export ANACONDA_HOME="/root/anaconda3"
export PATH=${ANACONDA_HOME}/bin:$PATH
