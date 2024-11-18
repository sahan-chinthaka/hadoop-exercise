hdfs dfs -mkdir -p /user/hadoop/input
hdfs dfs -put input.txt /user/hadoop/input

hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-*.jar \
    -input /user/hadoop/input/* \
    -output /user/hadoop/output \
    -mapper mapper.py \
    -reducer reducer.py
