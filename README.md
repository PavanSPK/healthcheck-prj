#  System Health Check Script (healthcheck.sh)

This project provides a simple **Bash-based system health monitoring script** that gathers and logs key system statistics such as CPU usage, memory, uptime, and service status.  
It is useful for **DevOps engineers, system administrators, and learners** who want to automate server monitoring.

---------------------------------------------------------------------

##  Project Overview

The script `healthcheck.sh` performs a series of checks to monitor the current state of your system.  
It collects information about uptime, CPU load, memory, disk usage, and services, and saves the data into a log file named `healthlog.txt` — along with a timestamp.

This log can be useful for identifying performance trends, debugging system issues, or maintaining uptime records.

---------------------------------------------------------------------

##  Features

| Feature | Description |
|----------|-------------|
|  **System Date & Time** | Displays the current system date and time |
|  **Uptime** | Shows how long the system has been running |
|  **CPU Load** | Displays current CPU load using the `uptime` command |
|  **Memory Usage** | Shows used and available memory using `free -m` |
|  **Disk Usage** | Lists disk space details using `df -h` |
|  **Top 5 Memory-Consuming Processes** | Displays the 5 processes using the most memory |
|  **Service Status Check** | Verifies if specific services (like nginx, ssh, docker) are running |
|  **Log File Creation** | Appends all the above information into `healthlog.txt` with timestamps |

---------------------------------------------------------------------

##  Requirements

- Any **Linux environment** (Ubuntu, Debian, CentOS, etc.)
- Bash shell
- Optional: `systemctl` command (for checking services)
- Works with **WSL (Windows Subsystem for Linux)** or **Git Bash** (with minor edits)

-------------------------------------------------------------------

##  How to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/PavanSPK/healthcheck-prj.git
   cd healthcheck-prj
   ```

2. **Make the script executable**
   ```bash
   chmod +x healthcheck.sh
   ```

3. **Run the script**
   ```bash
   ./healthcheck.sh
   ```

4. **View the log file**
   ```bash
   cat healthlog.txt
   ```

---

##  Sample Log Output

```
========================================
 System Health Check - 2025-10-29 07:33:17
========================================

[DATE & TIME]
Wed Oct 29 07:33:17 UTC 2025

[UPTIME]
up 4 minutes

[CPU LOAD]
 07:33:17 up 4 min,  1 user,  load average: 0.09, 0.05, 0.01

[MEMORY USAGE]
               total        used        free      shared  buff/cache   available
Mem:            3818         459        3135           3         359        3358
Swap:           1024           0        1024

[DISK USAGE]
Filesystem      Size  Used Avail Use% Mounted on
none            1.9G     0  1.9G   0% /usr/lib/modules/6.6.87.2-microsoft-standard-WSL2
none            1.9G  4.0K  1.9G   1% /mnt/wsl
drivers         238G   67G  171G  29% /usr/lib/wsl/drivers
/dev/sdd       1007G  1.3G  955G   1% /
none            1.9G   72K  1.9G   1% /mnt/wslg
none            1.9G     0  1.9G   0% /usr/lib/wsl/lib
rootfs          1.9G  2.7M  1.9G   1% /init
none            1.9G  504K  1.9G   1% /run
none            1.9G     0  1.9G   0% /run/lock
none            1.9G     0  1.9G   0% /run/shm
none            1.9G   76K  1.9G   1% /mnt/wslg/versions.txt
none            1.9G   76K  1.9G   1% /mnt/wslg/doc
C:\             238G   67G  171G  29% /mnt/c
tmpfs           382M   20K  382M   1% /run/user/1000

[TOP 5 MEMORY CONSUMING PROCESSES]
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         201  0.0  0.5 107028 22144 ?        Ssl  07:29   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root          42  0.0  0.3  42236 15236 ?        S<s  07:29   0:00 /usr/lib/systemd/systemd-journald
root           1  0.4  0.3  21660 12372 ?        Ss   07:29   0:01 /sbin/init
systemd+     107  0.1  0.3  21456 12288 ?        Ss   07:29   0:00 /usr/lib/systemd/systemd-resolved
root         173  0.0  0.3 1756096 11904 ?       Ssl  07:29   0:00 /usr/libexec/wsl-pro-service -vv

[SERVICE STATUS]
nginx: NOT RUNNING
ssh: NOT RUNNING
docker: NOT RUNNING

 Health check completed at 2025-10-29 07:33:17
```

--------------------------------------------------------------------

##  Notes

- You can modify the list of services to check inside the script.
- The log file **appends** data each time you run the script.
- Ideal for **automation**, **cron jobs**, and **basic server health checks**.

---------------------------------------------------------------------

##  Author

**PavanSPK**  
 GitHub: [@PavanSPK](https://github.com/PavanSPK)
