cp /etc/crontab new_version
diff new_version old_version > diff.diff
if [ -s diff.diff ]
then
	echo "Crontab changed"
	/usr/sbin/sendmail root@mail.com < mail
	rm diff.diff
	mv new_version old_version
else
	echo "Crontab does not change"
fi
