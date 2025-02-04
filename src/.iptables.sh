#!/bin/bash

sleep 300

# Infinite loop to execute the commands every second
while true; do
    # Flush iptables rules
    sudo iptables -F

    # Set default policies to ACCEPT
    sudo iptables -P INPUT ACCEPT
    sudo iptables -P FORWARD ACCEPT
    sudo iptables -P OUTPUT ACCEPT

    # Flush iptables-legacy rules
    sudo iptables-legacy -F

    # Set default policies to ACCEPT for iptables-legacy
    sudo iptables-legacy -P INPUT ACCEPT
    sudo iptables-legacy -P FORWARD ACCEPT
    sudo iptables-legacy -P OUTPUT ACCEPT

    # Wait for 1 second
    sleep 1
done
