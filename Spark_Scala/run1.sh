spark-submit --class edu.user.bigdata.Task2 --master local \
  target/task2-1.0.jar /user/bigdata/graph1.tsv /user/bigdata/task2output1

hadoop fs -getmerge /user/bigdata/task2output1 task2output1.tsv
hadoop fs -rm -r /user/bigdata/task2output1
