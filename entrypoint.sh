#!/bin/bash
set -e

HOST="$1"
USERNAME="$2"
KEY="$3"
PORT="$4"
TIMEOUT="$5"
SCRIPT="$6"

# Connect SSH and execute script
ssh -i <(echo "$KEY") -o StrictHostKeyChecking=no -p "$PORT" "$USERNAME@$HOST" "bash -s" <<EOF
$SCRIPT
EOF
