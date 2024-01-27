# IP Sweep Script

This Bash script performs a simple IP sweep by pinging a range of IP addresses on a given network. It outputs a list of responsive IP addresses to a text file.

## Prerequisites

- Bash shell environment
- Ping utility

## Usage

```bash
./ipsweep.sh <IP_Address_Prefix>
```

Replace <IP_Address_Prefix> with the first three octets of the target IP addresses. For example, if the target range is 192.168.1.x, you would run:
```bash
./ipsweep.sh 192.168.1
```
If no IP address is provided, the script will display a syntax message.

## Script Description
The script iterates through a range of IP addresses, pinging each one to check for a response. If a response is received, it extracts the IP address and appends it to the iplist.txt file.

## Output
After running the script, you can find the list of discovered IP addresses in the iplist.txt file.

## Notes
Ensure proper permissions to execute the script :
```bash
chmod +x ipsweep.sh
```
## Disclaimer
This script is provided as-is, and I'm not responsible for any misuse or damage caused by its use. Use it responsibly and only on networks you are authorized to scan.
