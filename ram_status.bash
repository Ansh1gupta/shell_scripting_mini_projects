#!/bin/bash
Free_Space=$(free -mt | grep "Total" | awk '{print $4}')
threshold=1024
if [[ $Free_Space -lt $threshold ]]
then
        echo "RAM is running low"
else
        echo "Sufficient RAM:$Free_Space"
fi