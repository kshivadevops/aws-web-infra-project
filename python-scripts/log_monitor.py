import re
with open('/var/log/nginx/access.log') as f:
    for line in f:
        if " 500 " in line or " 503 " in line:
            print("Server error detected:", line)
