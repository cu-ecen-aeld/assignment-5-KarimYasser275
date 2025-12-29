#!/bin/bash
# Clean Buildroot completely (distclean)
# Author: Karim 😉

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BUILDROOT_DIR="$SCRIPT_DIR/buildroot"

if [ ! -d "$BUILDROOT_DIR" ]; then
    echo "ERROR: buildroot directory not found at: $BUILDROOT_DIR"
    exit 1
fi

echo "Distcleaning Buildroot at: $BUILDROOT_DIR"
make -C "$BUILDROOT_DIR" distclean

echo "Buildroot distclean completed successfully"
