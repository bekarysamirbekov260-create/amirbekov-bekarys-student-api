#!/bin/bash

# Student information
STUDENT_NAME="Bekarys Amirbekov"

# Project directory
PROJECT_DIR="$HOME/amirbekov-bekarys-student-api"
LOG_FILE="$PROJECT_DIR/logs/Amirbekov_Bekarys_system_report.log"

# Save the report to the log and display it in the terminal
{
    echo "========================================"
    echo "SYSTEM REPORT"
    echo "========================================"

    echo "Student: $STUDENT_NAME"
    echo "Date and time: $(date)"
    echo "Current username: $(whoami)"

    echo
    echo "Operating system:"
    cat /etc/os-release | grep PRETTY_NAME

    echo
    echo "Kernel version:"
    uname -r

    echo
    echo "CPU information:"
    lscpu | grep -E 'Model name|CPU\(s\)' | head -n 2

    echo
    echo "Memory information:"
    free -h

    echo
    echo "Disk usage:"
    df -h

    echo
    echo "Available disk space:"
    df -h "$HOME"

    echo
    echo "Report generated successfully."
    echo "========================================"

} | tee "$LOG_FILE"
