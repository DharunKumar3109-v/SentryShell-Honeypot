#!/bin/bash
set -e

echo "SentryShell - Cowrie installation helper"
echo "Review the official Cowrie documentation before running commands."

if ! command -v git >/dev/null 2>&1; then
    echo "git is required."
    exit 1
fi

if [ -d "cowrie" ]; then
    echo "Cowrie directory already exists."
    exit 0
fi

git clone https://github.com/cowrie/cowrie.git

echo "Cowrie source downloaded."
echo "Follow the Cowrie documentation for dependencies and virtual-environment setup."
