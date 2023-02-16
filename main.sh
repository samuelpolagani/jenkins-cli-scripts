echo "1.Create Job"
echo "2.Delete Job"
echo "3.Build Job"
echo "4.Display jobs"

echo "Enter your choice"
read choice

case $choice in
	1) sh createjob.sh
	;;
	2) sh deletejob.sh
		;;
	3) sh buildJobs.sh
		;;
	4) sh displayJobs.sh
		;;
	*) echo "Enter valid Input"
		;;
esac
