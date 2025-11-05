a=$(df -h / | tail -1 | awk -F " " '{print $5}' | tr -d "%")
echo "$a" 

if [ $a -gt 70 ]; then
	echo "$(date) Disk High" >> /home/admin/Desktop/devops_tasks_practise/tasks2/disk_status.log
else
	echo "$(date) Normal" >> /home/admin/Desktop/devops_tasks_practise/tasks2/disk_status.log
fi



