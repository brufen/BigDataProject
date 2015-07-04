hadoop jar ./target/task1-1.0.jar edu.user.bigdata.Task1 /user/bigdata/graph2.tsv /user/bigdata/task1output2
hadoop fs -getmerge /user/bigdata/task1output2/ task1output2.tsv
hadoop fs -rm -r /user/bigdata/task1output2
