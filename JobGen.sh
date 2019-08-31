#!/bin/bash
set +x

##Create 100 files, with iJob being the counter
let iJob=1001
let fJob=1100
myjob=SimJob_

while [ $iJob -le $fJob ]
do
  echo "File number: $iJob"
##the job name with the format $myjob$iJob.txt
  sed -e s/8000/"$iJob"/g ./job_QcMc.head >> ${myjob}${iJob}.txt
  sed -e s/8000/"$iJob"/g ./job_QcMc.foot >> ${myjob}${iJob}.txt
  let iJob++
done

exit 0
