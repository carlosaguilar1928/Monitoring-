#!/bin/bash
# This is a script meant to let us test NRPE
# Plugins that we write

cycle=$( uptime  | awk '{print $10}' | awk -F "," '{print $1}'

status="0"                                  # Change the status to test different alert states

if [ $status == "0" ]; then
    echo "STATUS:OK"
    exit 0;
    
  elif [ $status == "2" ]; then
    echo "STATUS:CRITICAL"
    exit 2;
    
  elif [ $status == "1" ] ; then
    echo "STATUS:WARNING"
    exit 1;
    
else
   echo "STATUS:UNKNOWN"
   exit 3;
fi
