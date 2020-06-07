#!/bin/bash
#cat app.pid
#echo 'killing if pid if running'

rm -fv nohup.out
nohup java -jar ../build/libs/gradle-vue-boot-jenkins-0.0.1-SNAPSHOT.war &
app_pid=$!
echo $app_pid > app.pid
echo "starting app with PID: '$app_pid'"
echo "sleeping"
sleep 2 # wait for process to start
echo "checking if app is up"
while true
do
    res=$(tail -n3 nohup.out | grep -c "Started BootGradleApplication")
    #echo $res
    if [ $res -ge 1 ]
    then
        echo "App started"
        break
    fi
done

