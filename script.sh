sudo apt update
sudo apt upgrade
sudo apt install git
sudo apt install openjdk-8-jdk
sudo apt install python-minimal
sudo apt install python3-pip
cd Documents
git clone https://github.com/vpankaj97/Spark-Hive-Hadoop.git
cd Downloads
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
sudo cp ~/Downloads/apache-hive-3.1.2-bin /opt
sudo cp ~/Downloads/hadoop-3.2.1 /opt
sudo cp ~/Downloads/spark-2.4.5-bin-hadoop2.7 /opt
cp ~/Documents/Spark-Hive-Hadoop/.bashrc ~/
source ~/.bashrc
sudo chown pankaj:pankaj -R /opt/apache-hive-3.1.2-bin
sudo chown pankaj:pankaj -R /opt/hadoop-3.2.1
sudo chown pankaj:pankaj -R /opt/spark-2.4.5-bin-hadoop2.7
sudo chown pankaj:pankaj -R /opt/hdfs
mv ~/Documents/Spark-Hive-Hadoop ~/Documents/gitHUB
pip3 install findspark
hdfs dfs -mkdir /public
hdfs dfs -put ~/Documents/gitHUB/Spark-Hive-Hadoop/data/retail_db /public
hdfs dfs -put ~/Documents/gitHUB/Spark-Hive-Hadoop/data/retail_db_json /public
