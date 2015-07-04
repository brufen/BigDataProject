spark-submit --class edu.user.bigdata.Task2 --master local \
  target/task2-1.0.jar /user/bigdata/graph2.tsv /user/bigdata/task2output2

hadoop fs -getmerge /user/bigdata/task2output2 task2output2.tsv
hadoop fs -rm -r /user/bigdata/task2output2
