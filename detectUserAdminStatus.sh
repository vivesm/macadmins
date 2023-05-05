#!/bin/bash

# Check if the logged-in user is an admin

if dseditgroup -o checkmember -m "$(whoami)" admin >/dev/null 2>&1; then
    echo "<result>Admin</result>"
else
    echo "<result>Standard User</result>"
fi
