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

### Disk Usage Monitor

`scripts/disk_monitor.sh`

A Bash script that monitors root filesystem disk usage and compares it against a configurable warning threshold.

The script demonstrates:

- Bash variables
- Command substitution
- Pipes
- `awk` text processing
- `tr` text manipulation
- Conditional `if/else` logic
- Numeric comparisons
- Basic system monitoring

By default, the warning threshold is set to 80%. If disk usage reaches or exceeds the threshold, the script displays a warning.

### Automated Backup Utility

`scripts/backup.sh`

A Bash utility that creates timestamped, compressed backups of a specified directory.

The script includes:

- Command-line argument handling
- Source-directory validation
- Automatic backup-directory creation
- Timestamped backup filenames
- `tar.gz` compression
- Exit-status checking
- Basic error handling

Example:

```bash
./scripts/backup.sh ~/Documents

Backups are stored in:

~/backups/

The backup process was also tested by extracting an archive into a separate restore directory and verifying the restored files.

### Log Analyzer

`scripts/log_analyzer.sh`

A Bash utility that analyzes a specified log file and summarizes error and warning entries.

The script includes:

* Command-line argument handling
* Log-file validation
* Case-insensitive error and warning detection
* Error and warning counters
* `grep`-based log filtering
* Extended regular expressions
* Display of the 10 most recent matching log entries

Example:

```bash
./scripts/log_analyzer.sh /tmp/sample.log
```

The utility helps identify recent warning and error events during basic system troubleshooting and operational monitoring.

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
│   ├── backup.sh
│   ├── disk_monitor.sh
│   ├── log_analyzer.sh
│   └── system_health.sh
└── README.md```

## Planned Improvements

Additional utilities will be added progressively, including:

* User and permission auditing
* Service monitoring
* Basic system administration automation

## Author

**Valodia Uwase**

Computer Science and Data Science professional with interests in software engineering, Linux systems, backend development, data engineering, and automation.
# linux-sysadmin-toolkit
Linux system administration and automation tools for monitoring, backups, logging, and routine server operations.
