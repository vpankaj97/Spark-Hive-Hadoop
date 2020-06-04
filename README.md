# Spark-Hive-Hadoop
This contains a self created dumb way of installing Spark, Hive and Hadoop with instructions to PLUG and PLAY.

Hadoop - 3.2.1
Spark - 2.4.5
Hive - 3.1.2
 
For UBUNTU 18.04 (haven't tested with others)

My hostname - shockWAVE
My username - pankaj
(use the same if you don't have time to change some spark/hive/hadoop configuration files by yourself)

## Install openjdk-8-jdk

1. Open terminal and run - "bash script.sh"
   
2. Check: "java --version" "pyspark --version"

3. From the terminal, RUN:

   3.1 'hadoop namenode -format;
      3.1.1 See if hdfs is working now.

   3.2 'start-dfs.sh && start-yarn.sh'
      3.2.1 See if all services are running using - 'jps'

5. Install VSCODE(preferred by me)
    5.1 Check python version being used - "python --version" and "python3 --version" (should be same) - 3.6.9
 
6. git clone SparkPractices from vpankaj97 (Self Advertisment I know)

7. Open any notebook from inside VSCODE in SparkPractices ()

8. Install - Python extension - runs the notebook

9. Note choose a Python interpretor - 3.6.x

10. VSCODE will ask you to install Data Science libraries, -- SAY YES.

RUN IT ALL!!


TROUBLESHOOT - Hive and Spark

1. I have used inbuilt Apache Derby as metaStore.

Problem -  conflicting versions in Hive and Spark.
Solution : 
Steps:
1. If exists: Delete "metastore_db" in "$HIVE_HOME/metaStore/"
2. In terminal, run "pyspark"
3. run : 
		"spark.sql("show databases")"
4. metastore_db will automagically be created that works on both spark and hive.
