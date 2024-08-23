# kernel-graduation-project
## Network Task Requirements Document


### 1. Objective
The primary objective of this network task is to analyze network traffic using Wireshark and automate specific tasks with a Bash script, generating a summary report.


### 2. Scope
1. Capture network traffic using Wireshark.
2. Develop a Bash script to analyze the captured data.
3. Extract relevant information like total packets, protocols, and top source/destination IP addresses.
4. Generate a summary report based on the analysis.

### 2. Wireshark Capture
1. Start Wireshark and capture network traffic.
2. Save the captured data in a pcap file (e.g., your_capture_file.pcap).



## 3. Bash Script
1. Create a Bash script named analyze_traffic.sh.
* Use the script to:
a. Specify the path to the Wireshark pcap file.
b. Analyze the data to identify patterns.
c. Extract information like total packets, protocols, etc.
d. Generate a summary report.

## 4. output

```
----- Network Traffic Analysis Report -----
1. Total Packets: 790
2. Protocols:
   - HTTP: 14 packets
   - HTTPS/TLS: 151 packets

3. Top 5 Source IP Addresses:
    364 192.168.150.130
     83 199.232.82.49
     55 172.67.141.87
     46 192.168.150.2
     46 108.159.120.84

4. Top 5 Destination IP Addresses:
    422 192.168.150.130
     87 199.232.82.49
     49 172.67.141.87
     46 192.168.150.2
     32 142.250.200.232

----- End of Report -----
`
