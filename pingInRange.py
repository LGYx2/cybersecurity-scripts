import sys
import ping3
import ipaddress
import socket

def main():
    if len(sys.argv) != 3:
        print("Usage: python pingInRange <host> <range>")
        return
    host = sys.argv[1]
    ipRange = int(sys.argv[2]);
    outputFile = "pingResult.txt"
    if isinstance(host,str):
        host = socket.gethostbyname(host)

    try:
        ip = ipaddress.IPv4Address(host)
    except ipaddress.AddressValueError:
        print(f"Ip is not a valid Ipv4 address : {host}")
        return
    
    
    with open(outputFile,"w") as file:
        for i in range (ipRange+1):
            currentHost = str(ip+i)
            response=ping3.ping(currentHost, timeout=0.5)
            file.write(f"Host {currentHost} is reachable. Response time: {response} ms\n") if response is not None else print(f"Host {currentHost} is not reachable")

main()


        

    