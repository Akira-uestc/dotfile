#!/bin/bash
systemctl restart NetworkManager
systemctl restart clash
cd /home/akira/configuration
python UESTC-WIFI.py
