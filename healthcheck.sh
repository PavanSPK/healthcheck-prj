#!/bin/bash
# =====================================================
#  System Health Check Script
#  File: healthcheck.sh
#  Description: Collects system information and logs it.
# =====================================================

# Timestamp for log
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# Log file
logfile="healthlog.txt"

# Output header
echo "========================================" >> $logfile
echo " System Health Check - $timestamp" >> $logfile
echo "========================================" >> $logfile

# 1️ System Date and Time
echo -e "\n[DATE & TIME]" >> $logfile
date >> $logfile

# 2️ System Uptime
echo -e "\n[UPTIME]" >> $logfile
uptime -p >> $logfile

# 3️ CPU Load
echo -e "\n[CPU LOAD]" >> $logfile
uptime >> $logfile

# 4️ Memory Usage
echo -e "\n[MEMORY USAGE]" >> $logfile
free -m >> $logfile

# 5️ Disk Usage
echo -e "\n[DISK USAGE]" >> $logfile
df -h >> $logfile

# 6️ Top 5 Memory Consuming Processes
echo -e "\n[TOP 5 MEMORY CONSUMING PROCESSES]" >> $logfile
ps aux --sort=-%mem | head -n 6 >> $logfile

# 7️ Check Services
echo -e "\n[SERVICE STATUS]" >> $logfile
services=("nginx" "ssh" "docker")

for service in "${services[@]}"
do
    if systemctl is-active --quiet $service
    then
        echo "$service: RUNNING" >> $logfile
    else
        echo "$service: NOT RUNNING" >> $logfile
    fi
done

echo -e "\n Health check completed at $timestamp\n" >> $logfile
echo "----------------------------------------------------------" >> $logfile
