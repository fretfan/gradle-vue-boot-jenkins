#!/bin/bash
#cat app.pid
#echo 'killing if pid if running'
#export BUILD_ID=dontKillMe #otherwise jenkins kills java -jar, when build finishes

#kill app running on 8081
echo 'killing app on 8081'
kill $(netstat -tulpn | grep 8081 | sed 's/.*LISTEN\(.*\)\/java/\1/')
sleep 2
rm -fv nohup.out
nohup > nohup.out java -jar ../build/libs/gradle-vue-boot-jenkins-0.0.1-SNAPSHOT.war &
app_pid=$! #PID of last command
echo "starting app with PID: '$app_pid'"

#####CHECK if app started successfully
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
    if [ $tries -ge 10 ]
    then
      echo "tried 10 times, exit"
      break
     fi
done

