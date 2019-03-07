#!/bin/bash

main=Privy
sys=$main/SysInfo.txt
ugo=$main/UserGroupInfo.txt
svc=$main/RootServices.txt
suid=$main/SUID-GUID.txt
cronned=$main/CronJobs.txt
path_info=$main/PATH-Info.txt
netstuff=$main/NetworkInfo.txt
shdw=$main/Shadow.txt
pswd=$main/Passwd.txt



mkdir ./$main
echo "[+] Getting System Info"
echo "==========================================================="
echo "[+] System Info" >> $sys
echo "===========================================================" >> $sys
date >> $sys
echo "" >> $sys
echo "uname -a" >> $sys
echo "--------" >> $sys
uname -a >> $sys
echo >> $sys
echo "cat /etc/issue" >> $sys
echo "--------------" >> $sys
cat /etc/issue >> $sys
echo >> $sys
echo "cat /etc/*-release" >> $sys
echo "------------------" >> $sys
cat /etc/*-release >> $sys
echo >> $sys
echo >> $sys
echo "[+] Getting User/Group Info"
echo "==========================================================="
echo "[+] User/Group Info" >> $ugo
echo "===========================================================" >> $ugo
date >> $ugo
echo "" >> $ugo
echo "whoami" >> $ugo
echo "------" >> $ugo
whoami >> $ugo
echo >> $ugo
echo "id" >> $ugo
echo "------" >> $ugo
id >> $ugo
echo >> $ugo
echo "cat /etc/passwd" >> $ugo
echo "---------------" >> $ugo
echo "*** CHECK FOR Passwd.txt FILE IN ./Enummer ***" >> $ugo
cat /etc/passwd >> $pswd
echo >> $ugo
echo "cat /etc/groups" >> $ugo
echo "---------------" >> $ugo
cat /etc/groups >> $ugo
echo >> $ugo
echo "cat /etc/shadow" >> $ugo
echo "---------------" >> $ugo
echo "*** CHECK FOR Shadow.txt FILE IN ./Enummer ***" >> $ugo
cat /etc/shadow >> $shdw
echo >> $ugo
echo "last" >> $ugo
echo "------" >> $ugo
last >> $ugo
echo >> $ugo
echo "ls -al /home/*" >> $ugo
echo "--------------" >> $ugo
ls -al /home/* >> $ugo
echo >> $ugo
echo "ls -al /root" >> $ugo
echo "------------" >> $ugo
ls -al /root >> $ugo
echo >> $ugo
echo >> $ugo
echo "[+] Looking For Services Running as Root"
echo "==========================================================="
echo "[+] Services Running as Root" >> $svc
echo "===========================================================" >> $svc
date >> $svc
echo "ps aux | grep root" >> $svc
echo "------------------" >> $svc
ps aux | grep root >> $svc
echo >> $svc
echo >> $svc
echo "[+] Looking For SUID/GUID Files and World Writable Files"
echo "==========================================================="
echo "[+] SUID/GUID and World Writable Files" >> $suid
echo "===========================================================" >> $suid
date >> $suid
echo >> $suid
echo "SUID" >> $suid
echo "----" >> $suid
find / -perm -u=s -type f 2>/dev/null >> $suid
echo >> $suid
echo "GUID" >> $suid
echo "----" >> $suid
find / -perm -g=s -type f 2>/dev/null >> $suid
echo >> $suid
echo "World Writable Files" >> $suid
echo "--------------------" >> $suid
find / -perm -2 -type f 2>/dev/null | grep -v /proc/ >> $suid
echo >> $suid
echo >> $suid
echo "[+] Looking For Cron Jobs"
echo "==========================================================="
echo "[+] Cron Jobs" >> $cronned
echo "===========================================================" >> $cronned
date >> $cronned
echo >> $cronned
echo "cat /etc/crontab" >> $cronned
echo "----------------" >> $cronned
cat /etc/crontab >> $cronned
echo >> $cronned
echo >> $cronned
echo "[+] Looking For PATH Info"
echo "==========================================================="
echo "[+] PATH Info" >> $path_info
echo "===========================================================" >> $path_info
date >> $path_info
echo >> $path_info
echo "echo \$PATH" >> $path_info
echo "----------" >> $path_info
echo $PATH >> $path_info
echo >> $path_info
echo >> $path_info
echo "[+] Checking For Network Info"
echo "==========================================================="
echo "[+] Network Information" >> $netstuff
echo "===========================================================" >> $netstuff
date >> $netstuff
echo >> $netstuff
echo "ifconfig -a" >> $netstuff
echo "-----------" >> $netstuff
ifconfig -a >> $netstuff
echo >> $netstuff
echo "ip addr" >> $netstuff
echo "-------" >> $netstuff
ip addr >> $netstuff
echo >> $netstuff
echo "hostname -i" >> $netstuff
echo "-----------" >> $netstuff
hostname -i >> $netstuff
echo >> $netstuff
echo "netstat -antup" >> $netstuff
echo "--------------" >> $netstuff
netstat -antup >> $netstuff
echo >> $netstuff
echo "route" >> $netstuff
echo "-----" >> $netstuff
route >> $netstuff
echo >> $netstuff
echo >> $netstuff
echo "."
echo "."
echo "."
echo "[+] DONE!"
echo
echo

