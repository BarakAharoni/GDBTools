# GDB script to configure GDB for Android debugging

# Connect to the GDB server running on the Android device
target remote :1337

# Handle SIGILL signal
handle SIGILL pass stop

# Set a breakpoint at main function
break main

# Continue execution
continue
