echo "Displaying the Jenkins Jobs"
echo "-----------------------------------------"
jenkinsURL=http://43.205.98.244:8080/
jenkinsUsername=samuel
jenkinsPassword=1197350b2cb006ad557db7a983b65e549b

java -jar jenkins-cli.jar -s $jenkinsURL -auth $jenkinsUsername:$jenkinsPassword -webSocket list-jobs
