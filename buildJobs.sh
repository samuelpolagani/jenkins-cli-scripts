echo "Enter the job name that you want to trigger"
read jobName

echo "Build the Jenkins $jobName"
echo "-----------------------------------------"
jenkinsURL=`grep JENKINS_URL jenkins.properties | cut -d "=" -f2`
jenkinsUsername=`grep JENKINS_USERNAME jenkins.properties | cut -d "=" -f2`
jenkinsPassword=`grep JENKINS_PASSWORD jenkins.properties | cut -d "=" -f2`

java -jar jenkins-cli.jar -s $jenkinsURL -auth $jenkinsUsername:$jenkinsPassword -webSocket build $jobName
