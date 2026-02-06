## Project Overview

In this project, I created a sample log file containing system error messages and analyzed it using common Linux commands such as `cat`, `less`, `tail`, and `grep`.

To better organize and understand the errors, I wrote a Bash (`.sh`) script that processes the log file and summarizes the error information in a readable format.

The main commands used in this project are:

* `grep` for filtering error-related log entries
* `sed` for temporarily cleaning and normalizing error messages to make analysis easier

This project focuses on understanding how log files can be analyzed efficiently in Linux without modifying the original log data.

This Bash script (analyze.sh) analyzes a specified log file to count total ERROR entries and summarize the frequency of unique error messages, writing the results to report.txt. The script expects the log file path as a command-line argument and includes input validation to fail fast if the argument is missing or does not refer to a regular file, printing a clear usage message and exiting. The -z test ensures an argument was provided, while the -f test verifies that the file exists. To run the script, first make it executable using chmod +x analyze.sh, then execute it by passing a log file, for example ./analyze.sh server.log. When valid input is supplied, the script runs silently and writes all output to report.txt, using grep -w to avoid false-positive matches and produce a reliable error summary suitable for automation or cron-based execution.
