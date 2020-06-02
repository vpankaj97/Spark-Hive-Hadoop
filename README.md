# Spark-Hive-Hadoop
This contains a self created dumb way of installing Spark, Hive and Hadoop with instructions to PLUG and PLAY.

 
For UBUNTU

My hsotname - shockWAVE
My username - pankaj
(use the same if you don't have time to change sparrk/hive/hadoop configuration files by yourself)

## Install openjdk-8-jdk

1. Unzip the highly intuitive named zip file...(I know)...and copy each folder to /opt - (yes even hdfs)

2. copy the last few sections of .bashrc to existing .bashrc (basically to export home)

   2.1 From the terminal, RUN - - - source ~/.bashrc
   
3. From the terminal, RUN:

   3.1 'start-dfs.sh && start-yarn.sh'
      3.1.1 See if all services are running using - 'jps'
      
   3.2 'hadoop namenode -format;
      3.2.1 See if hdfs is working now.


5. Install VSCODE(preferred by me)
    5.1 Install python version 3.x <3.8 (3.8 doesnt play well with --master yarn) -- I use 3.6.9
 
6. git clone SparkPractices from vpankaj97 (Self Advertisment I know)

7. Open any notebook from inside VSCODE in SparkPractices ()

8. Install - Python extension - runs the notebook

9. Note choose a Python interpretor - 3.x -- (install pip3 first)

10. VSCODE will ask you to install Data Science libraries, -- SAY YES.

RUN IT ALL!!
