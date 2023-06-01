#!/bin/bash
df -h | grep -m 2 /dev/sda1 |tail -n 1 | awk '{print }'
free -l -h
