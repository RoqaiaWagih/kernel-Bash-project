#!/usr/bin/bash

# Bash Script to Analyze Network Traffic

# Input: Path to the Wireshark pcap file
pcap_file=$1

# Check if a pcap file was provided
if [ -z "$pcap_file" ]; then
    echo "Please provide the path to the pcap file as an argument."
    exit 1
fi

# Function to extract information from the pcap file
analyze_traffic() {
    # Extract total packets
    total_packets=$(tshark -r "$pcap_file" | wc -l)

    # Extract HTTP and HTTPS/TLS packets
    http_packets=$(tshark -r "$pcap_file" -Y "http" | wc -l)
    https_packets=$(tshark -r "$pcap_file" -Y "tls" | wc -l)

    # Extract top 5 source IP addresses
    top_source_ips=$(tshark -r "$pcap_file" -T fields -e ip.src | sort | uniq -c | sort -nr | head -5)

    # Extract top 5 destination IP addresses
    top_dest_ips=$(tshark -r "$pcap_file" -T fields -e ip.dst | sort | uniq -c | sort -nr | head -5)

    # Output analysis summary
    echo "----- Network Traffic Analysis Report -----"
    echo "1. Total Packets: $total_packets"
    echo "2. Protocols:"
    echo "   - HTTP: $http_packets packets"
    echo "   - HTTPS/TLS: $https_packets packets"
    echo ""
    echo "3. Top 5 Source IP Addresses:"
    echo "$top_source_ips"
    echo ""
    echo "4. Top 5 Destination IP Addresses:"
    echo "$top_dest_ips"
    echo ""
    echo "----- End of Report -----"
}

# Run the analysis function
analyze_traffic
