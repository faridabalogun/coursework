#!/bin/bash
#
# add your solution after each of the 10 comments below
#

# count the number of unique stations
cut -d, -f5 201402-citibike-tripdata.csv | sort | uniq | wc -l
#330
# count the number of unique bikes
cut -d, -f12 201402-citibike-tripdata.csv | sort | uniq | sort -n | wc -l
#5700
# count the number of trips per day
cut -d, -f2 201402-citibike-tripdata.csv |cut -d" " -f1 | sort | uniq -c
# find the day with the most rides 
cut -d, -f2 201402-citibike-tripdata.csv |cut -d" " -f1 | sort | uniq -c | sort -nr|head -n1
#13816
# find the day with the fewest rides
cut -d, -f2 201402-citibike-tripdata.csv |cut -d" " -f1 | sort | uniq -c | sort -n|head -n2
#876
# find the id of the bike with the most rides
cut -d, -f12 201402-citibike-tripdata.csv | sort | uniq -c | sort -nr|head -n1
#20837
# count the number of rides by gender and birth year
cut -d, -f14,15 201402-citibike-tripdata.csv | sort | uniq -c| sort -n|wc -l
#142
# count the number of trips that start on cross streets that both contain numbers (e.g., "1 Ave & E 15 St", "E 39 St & 2 Ave", ...)
cut -d, -f5 201402-citibike-tripdata.csv | grep '.*[0-9].*&.*[0-9].*'| wc -l
#90549
# compute the average trip duration
awk -F, '{sum+=$1} END {print sum/NR} ' 201402-citibike-tripdata.csv
#874.516