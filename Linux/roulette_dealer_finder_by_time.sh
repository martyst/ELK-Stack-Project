
#!/bin/bash
#Use this script to check which Roulette dealer was working on a given date and time after Dealer schedules have been updated in the directory.

# $1 = Date in MMDD format.
# $2 = AM or PM
# change the directory to /home/sysadmin/Dealer_Schedules_03010 path to reflect whatever repository the Dealer schedules you wish to evaluate are stored in.
cd /home/sysadmin/Dealer_Schedules_0310
cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep $2
