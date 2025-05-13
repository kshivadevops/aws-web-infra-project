#!/bin/bash
mv /var/log/nginx/access.log /var/log/nginx/access.log.old
systemctl reload nginx
