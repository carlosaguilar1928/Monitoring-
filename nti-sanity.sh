#!/bin/bash
# This is a script meant to let us test NRPE
# Plugins that we write
#this a nrpe pluging for nrpe

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




#once this gets configure into the nrpe client then we can configure the above code
#this would also have to be configured in the server
# NTI-320 service config file
command[nti-sanity]=/usr/lib64/nagios/plugins/nti-sanity.sh
