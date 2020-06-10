sudo apt update
sudo apt upgrade
sudo apt install git
sudo apt install openjdk-8-jdk
sudo apt install python2
sudo apt-get install -y build-essential checkinstall 
sudo apt install python3-pip
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz
sudo tar xzf Python-3.6.9.tgz
cd Python-3.6.9
sudo ./configure --enable-optimizations
sudo make altinstall
sudo apt-get install -y python3-distutils python3-testresources
cd /home/pankaj/
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py
cd /home/pankaj/Documents
git clone https://github.com/vpankaj97/Spark-Hive-Hadoop.git
cd /home/pankaj/Downloads
wget https://mirrors.estointernet.in/apache/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz
wget http://apachemirror.wuchna.com/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz
wget http://apachemirror.wuchna.com/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz
tar xzvf spark-2.4.5-bin-hadoop2.7.tgz
tar xzvf apache-hive-3.1.2-bin.tar.gz
tar xzvf hadoop-3.2.1.tar.gz
rm ~/Downloads/apache-hive-3.1.2-bin/lib/guava-19.0.jar
cp ~/Documents/Spark-Hive-Hadoop/apache-hive-3.1.2-bin/ -r ~/Downloads/
cp ~/Documents/Spark-Hive-Hadoop/hadoop-3.2.1/ -r ~/Downloads/
cp ~/Documents/Spark-Hive-Hadoop/spark-2.4.5-bin-hadoop2.7/ -r ~/Downloads/
sudo cp ~/Documents/Spark-Hive-Hadoop/hdfs -r /opt
sudo cp ~/Downloads/apache-hive-3.1.2-bin -r /opt
sudo cp ~/Downloads/hadoop-3.2.1 -r /opt
sudo cp ~/Downloads/spark-2.4.5-bin-hadoop2.7 -r /opt
cp ~/Documents/Spark-Hive-Hadoop/.bashrc20_04 ~/
mv ~/.bashrc20_04 ~/.bashrc 
source ~/.bashrc
sudo chown pankaj:pankaj -R /opt/apache-hive-3.1.2-bin
sudo chown pankaj:pankaj -R /opt/hadoop-3.2.1
sudo chown pankaj:pankaj -R /opt/spark-2.4.5-bin-hadoop2.7
sudo chown pankaj:pankaj -R /opt/hdfs
mv ~/Documents/Spark-Hive-Hadoop ~/Documents/gitHUB
pip3 install findspark
sudo apt install ssh
ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
cd /home/pankaj/Downloads
rm -R spark-2.4.5-bin-hadoop2.7.tgz
rm -R apache-hive-3.1.2-bin.tar.gz
rm -R hadoop-3.2.1.tar.gz
hadoop namenode -format
start-dfs.sh
start-yarn.sh
hdfs dfs -mkdir /public
hdfs dfs -put ~/Documents/gitHUB/Spark-Hive-Hadoop/data/retail_db /public
hdfs dfs -put ~/Documents/gitHUB/Spark-Hive-Hadoop/data/retail_db_json /public
pyspark
