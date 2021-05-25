#!/bin/bash

export ip=`dig @resolver4.opendns.com myip.opendns.com +short -4`;
if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Host IP: $ip"
else
  echo "There is no Internet connection"
fi