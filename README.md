# scripts
## mem-report.sh script creates a report in csv (comma seperated) indicating memory, swap, and disk space in human readable Mb
`git clone https://github.com/ahmed3ta/scripts.git`
`cd scripts`
`bash mem-report.sh`
the actual advantage is that it's appending in the file with time stamp for logging and recording
to include it in the crontab
give the user permissions to run the script
`chmod u+x mem-report.sh`
open the cron editor
`crontab -e`
and add the following line for hourly logging
`0 * * * * bash < Path-to-script >/mem-report.sh`  
