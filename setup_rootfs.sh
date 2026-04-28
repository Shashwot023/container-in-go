#!/bin/bash
# Create the directory
mkdir -p rootfs

# Download the Alpine Mini Rootfs
curl -LO https://dl-cdn.alpinelinux.org/alpine/v3.20/releases/x86_64/alpine-minirootfs-3.20.5-x86_64.tar.gz

# Extract it into the rootfs folder
tar -xzf alpine-minirootfs-3.20.5-x86_64.tar.gz -C rootfs

# Clean up the tarball
rm alpine-minirootfs-3.20.5-x86_64.tar.gz

#Create specific missing directories
mkdir -p rootfs/proc rootfs/sys rootfs/dev rootfs/tmp
