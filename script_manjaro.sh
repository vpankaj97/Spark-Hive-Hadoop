git config --global credential.helper store
git config --global user.email "vermapankaj1997@gmail.com"
git config --global user.name "Pankaj Verma"
yes | sudo pacman -S openssh 
sudo systemctl enable sshd.service
sudo systemctl start sshd.service
ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
yes | sudo pacman -Syu jdk8-openjdk
sudo ln -s /usr/lib/jvm/java-8-openjdk/ /usr/lib/jvm/java-1.8.0-openjdk-amd64
sudo pacman -Syu yay
yay -S --noconfirm visual-studio-code-bin
sudo pacman -Syu pyenv
pyenv install 3.6.10
#cd Spark-Hive-Hadoop
#cp Python/* /usr/bin/
sudo python3.6 get-pip.py
cd /home/pankaj/Documents
#git clone https://github.com/vpankaj97/Spark-Hive-Hadoop.git
#cd /home/pankaj/Downloads
#wget https://mirrors.estointernet.in/apache/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz
#wget http://apachemirror.wuchna.com/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz
#wget http://apachemirror.wuchna.com/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz
#tar xzvf spark-2.4.5-bin-hadoop2.7.tgz
#tar xzvf apache-hive-3.1.2-bin.tar.gz
#tar xzvf hadoop-3.2.1.tar.gz
rm BigData/Hive-3.1.2/lib/guava-19.0.jar
#cp ~/Documents/Spark-Hive-Hadoop/apache-hive-3.1.2-bin/ -r ~/Downloads/
#cp ~/Documents/Spark-Hive-Hadoop/hadoop-3.2.1/ -r ~/Downloads/
#cp ~/Documents/Spark-Hive-Hadoop/spark-2.4.5-bin-hadoop2.7/ -r ~/Downloads/
sudo cp ~/Documents/Spark-Hive-Hadoop/hdfs -r ~/Documents/BigData
#sudo cp ~/Downloads/apache-hive-3.1.2-bin -r /opt
#sudo cp ~/Downloads/hadoop-3.2.1 -r /opt
#sudo cp ~/Downloads/spark-2.4.5-bin-hadoop2.7 -r /opt
cp ~/Documents/Spark-Hive-Hadoop/.bashrc_manjaro ~/
mv ~/.bashrc ~/.bashrcBAK 
mv ~/.bashrc_manjaro ~/.bashrc 
source ~/.bashrc
cd /home/pankaj/Documents
sudo chown pankaj:pankaj -R BigData/Hive-3.1.2
sudo chown pankaj:pankaj -R BigData/Hadoop-3.2.1
sudo chown pankaj:pankaj -R BigData/Spark-3.0.0
sudo chown pankaj:pankaj -R BigData/hdfs
#mv ~/Documents/Spark-Hive-Hadoop ~/Documents/gitHUB
pip3.6 install findspark
#cd /home/pankaj/Downloads
#rm -R spark-2.4.5-bin-hadoop2.7.tgz
#rm -R apache-hive-3.1.2-bin.tar.gz
#rm -R hadoop-3.2.1.tar.gz
hadoop namenode -format
start-dfs.sh && start-yarn.sh
hdfs dfs -mkdir /public
hdfs dfs -put ~/Documents/Spark-Hive-Hadoop/data/retail_db /public
hdfs dfs -put ~/Documents/Spark-Hive-Hadoop/data/retail_db_json /public
