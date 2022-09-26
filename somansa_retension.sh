​#!/bin/sh


today=`date +%Y%m%d`
daysago1=`date +%Y%m%d -d '1 day ago'`
daysago2=`date +%Y%m%d -d '2 day ago'`
daysago3=`date +%Y%m%d -d '3 day ago'`

daysago180=`date +%Y%m%d -d '180 day ago'`
daysago181=`date +%Y%m%d -d '181 day ago'`
daysago182=`date +%Y%m%d -d '182 day ago'`

monthago1=`date +%Y%m -d '1 month ago'`
monthago2=`date +%Y%m -d '2 month ago'`
monthago3=`date +%Y%m -d '3 month ago'`
monthago4=`date +%Y%m -d '4 month ago'`

monthago5=`date +%Y%m -d '5 month ago'`
monthago6=`date +%Y%m -d '6 month ago'`
monthago7=`date +%Y%m -d '7 month ago'`
monthago8=`date +%Y%m -d '8 month ago'`
monthago9=`date +%Y%m -d '9 month ago'`
monthago10=`date +%Y%m -d '10 month ago'`
monthago11=`date +%Y%m -d '11 month ago'`

monthago12=`date +%Y%m -d '13 month ago'`

gfs_brick=/somansa/data/gfs_brick1/

# 12개월 전 ES Index 로그 삭제

curl -XDELETE http://localhost:9200/mi_${monthago12}_*

# gfs_data 삭제
rm -rf ${gfs_brick}/maili/${monthago12}*
