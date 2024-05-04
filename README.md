# GDBTools

# Android GDB Automation

## Overview
This repository contains two scripts to automate the process of debugging Android applications using GDB:

1. **android_gdb_setup.sh**: Script to automate GDB server configuration for an Android package.
2. **android_gdb_script.gdb**: GDB script to configure GDB for Android debugging.

## Prerequisites
- Android device connected to the development machine.
- Android Debug Bridge (ADB) installed on the development machine.
- GDB installed on the development machine.

## Usage

### 1. Script to automate GDB server configuration for an Android package
```
./android_gdb_setup.sh <package_name>
```
Replace `<package_name>` with the package name of the Android application you want to debug.

### 2. GDB script to configure GDB for Android debugging
```
gdb -x android_gdb_script.gdb
```
This command will launch GDB and load the provided GDB script to configure GDB for Android debugging.

## Example
```
./android_gdb_setup.sh com.example.myapp
gdb -x android_gdb_script.gdb
```
This example demonstrates how to use the scripts to automate the debugging process for an Android application with package name `com.example.myapp`.

## Notes
- Ensure that the Android device is connected to the development machine and USB debugging is enabled.
- Make sure that the Android application you want to debug is installed and running on the device before running the scripts.
