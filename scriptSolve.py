import socket 
import sys
import os

if len(sys.argv) !=3:
    print("Error: Please provide the directory and the file name")
    sys.exit(1)
directoryPath = sys.argv[1]
outputFile = "ips.txt"
fileName = sys.argv[2]
newList = []

filePath = os.path.join(directoryPath, fileName)

if not os.path.isdir(directoryPath):
    print(f"Error: '{directoryPath}' is not a valid directory.")
    sys.exit(1)

if not os.path.isfile(filePath):
    print(f"Error: File '{fileName}' not found in '{directoryPath}'.")
    sys.exit(1)
with open(filePath,"r") as file:
    content = file.read()
    domainNames = content.split("\n")


for value in domainNames:
    ip = socket.gethostbyname(value)
    newList.append(ip)
    
with open(outputFile,"w") as output:
    for ip in newList:
        output.write(ip+"\n")
    