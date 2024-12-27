#!/bin/bash

if systemctl is-active --quiet httpd;
then
   echo "Httpd is running. `ps -aux | grep httpd`"
else
   echo "Httpd is not running. `ps -aux | grep httpd`"
   sudo systemctl start httpd

   # verify the service started or not
   if systemctl is-active --quiet httpd;
   then
      echo "httpd started successfully.. `ps -aux | grep httpd`"
   else
      echo "Failed to start hrrpd service"
fi        