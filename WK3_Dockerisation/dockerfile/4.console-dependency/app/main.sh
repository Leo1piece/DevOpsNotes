#!/bin/bash

echo "Press Ctrl+C any time to stop the application."
echo "docker network connect mynet citymatcher  ..."
 

echo

for i in $(seq 2); do
    for key in sy au ing ba lu pa ji san ; do
        echo "Searching all cities that contains '${key}' keyword ..."
        curl http://citymatcher?city=${key} 2>/dev/null
        echo
        echo
        
        sleep 3

    done
done
