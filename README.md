# Privy
Privilege escalation script for Linux machines
-----------------------------------------------

I created this while I was preparing for the OSCP exam.
I am super paranoid about what's allowed and what's not
so I figured I'd create my own script in the style of a 
LinEnum or linuxprivchecker. I love both of those scripts
but because of the way my mind thinks and processes data,
I decided to take a crack at making the output more
digestible for my brain. I did this by having the output 
broken up by information type, saved to a file, and 
neatly squared away into a folder called ./Privy

Features
---------

The script checks for major sources of info such as...

  + System Info (SysInfo.txt)
  + User/Group Info (UserGroupInfo.txt)
  + Service Running as Root (RootServices.txt)
  + SUID/GUID and World Writable Files (SUID-GUID.txt)
  + Cronjob info (CronJobs.txt)
  + PATH (PATH-Info.txt)
  + Network (NetworkInfo.txt)
  

This is a work in progress and just does the basics of 
what I want it to right now, but I will be adding more
function/features as I get the time.
