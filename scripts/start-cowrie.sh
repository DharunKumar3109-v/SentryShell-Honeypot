#!/bin/bash
set -e

if [ ! -d "cowrie" ]; then
    echo "Cowrie directory not found."
    echo "Run install-cowrie.sh first."
    exit 1
fi

cd cowrie

echo "Start Cowrie using the startup command documented for your installed version."
echo "Example:"
echo "  bin/cowrie start"
