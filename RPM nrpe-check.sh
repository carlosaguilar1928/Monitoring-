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



#this file is where we will write the NRPE plugins for checks
#this file will point to the startup file that will create RPM's 
# once this file points the RPM creation file we can compile it into a tar.gz file that will contain the nrpe checks
# file will live in the SOURCES folder of the BUILD Server. From there the .spec file in the SPECS folder will know what to do with it.
