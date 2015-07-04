hadoop jar ./target/task1-1.0.jar edu.user.bigdata.Task1 /user/bigdata/graph1.tsv /user/bigdata/task1output1
hadoop fs -getmerge /user/bigdata/task1output1/ task1output1.tsv
hadoop fs -rm -r /user/bigdata/task1output1
