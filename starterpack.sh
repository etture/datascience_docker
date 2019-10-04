#!/bin/bash
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo apt-get install -y -f

echo alias ..='"cd .."' >> ~/.bash_aliases
echo alias ...='"cd ../.."' >> ~/.bash_aliases
echo alias ....='"cd ../../.."' >> ~/.bash_aliases
echo alias .....='"cd ../../../.."' >> ~/.bash_aliases
echo alias ......='"cd ../../../../.."' >> ~/.bash_aliases

echo alias docker='"sudo docker"' >> ~/.bash_aliases
echo alias ybigta-spark='"docker exec -it ybigta-spark /bin/bash"' >> ~/.bash_aliases
echo alias ybigta-python='"docker exec -it ybigta-python /bin/bash"' >> ~/.bash_aliases

echo force_color_prompt=yes >> ~/.bashrc

source ~/.bashrc
