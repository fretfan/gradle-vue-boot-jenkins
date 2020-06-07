#!/bin/bash
#cat app.pid
#echo 'killing if pid if running'

rm -fv nohup.out
nohup > nohup.out java -jar ../build/libs/gradle-vue-boot-jenkins-0.0.1-SNAPSHOT.war &
app_pid=$!
echo $app_pid > app.pid
echo "starting app with PID: '$app_pid'"
echo "sleeping"
sleep 2 # wait for process to start
echo "checking if app is up"
tries=0
while true
do
    ls -lh
    pwd
    res=$(tail -n3 nohup.out | grep -c "Started BootGradleApplication")
    #echo $res
    if [ $res -ge 1 ]
    then
        echo "App started"
        break
    fi
    sleep 1
    tries=$(( tries + 1 ))
    echo $tries
    if [ $tries -ge 4 ]
    then
      echo "tried 5 times, exit"
      break
     fi
done

