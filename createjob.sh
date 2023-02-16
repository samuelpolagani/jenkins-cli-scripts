jenkinsURL=`grep JENKINS_URL jenkins.properties | cut -d "=" -f2`
jenkinsUsername=`grep JENKINS_USERNAME jenkins.properties | cut -d "=" -f2`
jenkinsPassword=`grep JENKINS_PASSWORD jenkins.properties | cut -d "=" -f2`

echo "Enter the job name you want to create"
read jobName

java -jar jenkins-cli.jar -s $jenkinsURL -auth $jenkinsUsername:$jenkinsPassword -webSocket create-job $jobName < job-template.xml
echo "$jobName got created"
