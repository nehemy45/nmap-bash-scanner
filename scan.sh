#!/bin/bash

# Simple Nmap Scanner for Beginners
# Just run this script and follow the prompts!

echo "=== Simple Network Scanner ==="
echo "This will scan a computer or website for open ports."

# Ask for target
read -p "Enter an IP or website (e.g., 192.168.1.1 or example.com): " target

# Create results folder if it doesn't exist
mkdir -p results

# Create result filename
result_file="results/scan_$(date +%Y%m%d).txt"

echo "Scanning $target... This might take a few minutes."

# Run basic Nmap scan and save results
nmap -F $target > $result_file

echo "Scan complete! Results saved to $result_file"
echo "You can view them by typing: cat $result_file"
