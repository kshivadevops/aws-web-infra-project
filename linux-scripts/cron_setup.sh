#!/bin/bash
echo "*/5 * * * * /usr/bin/python3 /home/ubuntu/python-scripts/health_check.py" | crontab -
echo "0 1 * * * /home/ubuntu/linux-scripts/rotate_logs.sh" | crontab -

