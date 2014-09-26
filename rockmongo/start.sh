#!/bin/bash

# Tell the rockmongo service how to get to the MongoDB container
# the SERVICE_HOST var is provided by kubernetes
sed -i "s/mongo_host\"] = \"127.0.0.1\"/mongo_host\"] = \"$SERVICE_HOST\"/" /var/www/html/config.php

# Start the Apache server
/usr/sbin/httpd -D FOREGROUND
