#!/bin/bash
for i in `mysql -udba -plocaldba --default-character-set=utf8 -S /tmp/mysql3306.sock -A -N -e "show databases"|grep -v "information_schema"|grep -v "log"|grep -v "mysql" |grep -v "performance_schema"|grep -v "test"`
do
echo $i
mysql -udba -plocaldba --default-character-set=utf8 -S /tmp/mysql3306.sock -A -e "use $i;insert into zj(sn) values(1230138);"
done