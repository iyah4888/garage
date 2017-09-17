# sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

# openssh
sudo apt-get install -y openssh-server
sudo service ssh status

# cudnn 6
wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v6/prod/8.0_20170307/cudnn-8.0-linux-x64-v6.0-tgz

# docker
sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
apt-cache madison docker-ce
sudo apt-get install -y docker-ce

# nvidia-docker
wget https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i nvidia-docker_1.0.1-1_amd64.deb
sudo groupadd docker
sudo gpasswd -a $USER docker



# gcc 4.9 for matlab + caffe
sudo apt-get install gcc-4.9 g++-4.9 gcc-4.9-multilib g++-4.9-multilib
echo 'export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libprotobuf.so.9:/usr/lib/x86_64-linux-gnu/libstdc++.so.6:$LD_PRELOAD' >> ~/.bashrc

