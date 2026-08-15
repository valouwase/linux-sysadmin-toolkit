# Linux System Administration Toolkit

A hands-on Linux systems administration project containing Bash-based utilities for system monitoring, automation, and routine administrative tasks.

This repository is part of my practical work in strengthening my Linux, Bash scripting, systems administration, and DevOps skills.

## Current Tools

### System Health Monitor

`scripts/system_health.sh`

A Bash script that generates a quick system health report containing:

* Current date and time
* System hostname
* System uptime
* Load average
* Memory usage
* Root filesystem disk usage
* Logged-in users

## Usage

Clone the repository:

```bash
git clone https://github.com/valouwase/linux-sysadmin-toolkit.git
```

Enter the project directory:

```bash
cd linux-sysadmin-toolkit
```

Make the script executable:

```bash
chmod +x scripts/system_health.sh
```

Run the system health monitor:

```bash
./scripts/system_health.sh
```

## Linux Concepts Demonstrated

This project currently demonstrates practical use of:

* Linux command-line navigation
* Bash scripting
* File permissions
* Executable scripts
* System monitoring commands
* Filesystem and disk inspection
* Memory monitoring
* User-session inspection
* Git version control

## Project Structure

```text
linux-sysadmin-toolkit/
├── scripts/
│   └── system_health.sh
└── README.md
```

## Planned Improvements

Additional utilities will be added progressively, including:

* Disk-usage monitoring and threshold alerts
* Automated backup scripts
* Log analysis
* User and permission auditing
* Service monitoring
* Basic system administration automation

## Author

**Valodia Uwase**

Computer Science and Data Science professional with interests in software engineering, Linux systems, backend development, data engineering, and automation.
# linux-sysadmin-toolkit
Linux system administration and automation tools for monitoring, backups, logging, and routine server operations.
