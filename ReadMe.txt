Graph Analysis with Hadoop
We analyzed two large graphs datasets with Hadoop framework. 
For serial processing we used single-node Apache Hadoop cluster and for parallel processing e used Spark with Scala Language. 
We run 3 algorithms:
- Sum of the waights (Task 1, Task 2)
- Computing the Minimum shortest path (Task3, Task 4)
- A clique  (Task5, Task 6)
   
Technolgy
We used a preconfigured virtual machine (VM) image from Cloudera (CDH) version
5.3.0. which runs on Linux os.
For VM platform, we used VMware workstation. .
The virtual image comes pre-installed Hadoop ( http://hadoop.apache.org/ ), and Spark ( https://spark.apache.org/ ). We used them both for this assignment. 
For stor datasets we used Hadoop Distributed File System (HDFS) the primary storage system used by Hadoop applications which It is tuned to support large files and designed to be highly fault-tolerant.
For uploading datasets we used a set of web applications HUE, that enable you to interact with a CDH cluster. 



DataSets

We used two graph files: 
graph1.tsv (4MB)  -  This graph is originally from the Enron email network data set. There are 321 thousand edges and 77
thousand nodes.
graph2.tsv 1 2 (870MB) - This graph is from the  Wikipedia link data set. There are 53 million edges and 1 million nodes.
Datasets:
Each file stores a list of edges as tab separated values.
Each line represents a single edge consisting of three columns: (source node ID, target node ID, edge weight), each of which is separated by a tab (\t). Node IDs are positive integers, and weights are also positive integers. Edges are sorted in a random order.
src tgt weight
51 117 1
51 194 1
51 299 3
151 230 51
151 194 79
130 51 10


Setting up Development Environments

In the directories of all Tasks , you will find pom.xml , run1.sh, run2.sh and src directory.
● s rc directory contains a main Java/Scala file. 
● pom.xml contains necessary dependencies and compile configurations for each task.
To compile, simply call Maven in the corresponding directory where pom.xml exists by this command:
mvn package
It will generate a single JAR file in the target directory (i.e. target/task2-1.0.jar). 

● run1.sh , run2.sh are the script files that run java/scala code over graph1.tsv (run1.sh) or
graph2.tsv (run2.sh) and download the output file to a local directory. The output files are
named based on its task number and graph number (e.g. task1output1.tsv). 
These scripts will do next steps:
1) run your JAR on Hadoop/Scala specifying the input file on HDFS (the first
argument) and output directory on HDFS (the second argument)
2) merge outputs from output directory and download to local file system.
3) remove the output directory on HDFS.


