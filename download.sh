#!/bin/bash

wget https://data.nber.org/natality/2017/natl2017.csv.zip
unzip natl2017.csv.zip
hdfs dfs -put natl2017.csv /user/abdur_zeybey/birth_2017.csv

wget https://data.nber.org/natality/2018/natl2018.csv.zip
unzip natl2018.csv.zip
hdfs dfs -put natl2018us.csv /user/abdur_zeybey/birth_2018.csv

wget https://data.nber.org/natality/2019/nber_output/US/birth_2019_nber_us.zip
unzip birth_2019_nber_us.zip
hdfs dfs -put birth_2019_nber_us.csv /user/abdur_zeybey/birth_2019.csv

wget https://data.nber.org/natality/2020/nber_output/US/birth_2020_nber_us_v1.csv
hdfs dfs -put birth_2020_nber_us_v1.csv /user/abdur_zeybey/birth_2019.csv

