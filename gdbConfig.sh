#!/bin/bash

# Script to automate GDB server configuration for an Android package

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <package_name>"
    exit 1
fi

package_name="$1"

# Find the PID of the process
pid=$(adb shell pidof -s $package_name)

# Check if the process is running
if [ -z "$pid" ]; then
    echo "Process $package_name is not running"
    exit 1
fi

# Forward the GDB server port to the device
adb forward tcp:1337 tcp:1337

# Start GDB server on the device
adb shell run-as $package_name /data/local/tmp/gdbserver :1337 --attach $pid
