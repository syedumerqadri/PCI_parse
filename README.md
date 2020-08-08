# PCI_parse
Parse gnmap file for the creation of Network Segmentation Testing Report Tables

## Install:
1. git clone https://github.com/syedumerqadri/PCI_parse
2. cd PCI_parse
3. chmod +x install.sh
4. ./install

## Guide for Internal Network Segmentation Testing:

1. Perform nmap scan in following format:
nmap -sS -p - -oA <scope_hosts>

2. Grab .gnmap file and create report using command:

> python3 PCI_parse.py sample.gnmap

3. It will generate report of word file with the ip tables
