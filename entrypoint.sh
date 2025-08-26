#!/bin/bash
set -e

HOST="$1"
USER="$2"
KEY="$3"
SCRIPT="$4"

echo "$KEY" > key.pem
chmod 600 key.pem

ssh -o StrictHostKeyChecking=no -i key.pem "$USER@$HOST" "$SCRIPT"
