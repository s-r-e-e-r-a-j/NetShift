
## NetShift

NetShift is a powerful Ethical Hacking tool designed to enhance your anonymity and privacy on the internet by leveraging the Tor network. It automatically changes your IP address, making it difficult for anyone to track your online activities. 

## Features
- Automatic installation of required dependencies (`Tor`, `curl`, `jq`).
- Periodic IP Address change via Tor to maintain anonymity.
- Display of the current Tor-routed IP address after every IP Address change.
- User-defined IP Address change interval and cycle count (or infinite mode).
- SOCKS proxy setup instructions for routing your applications through Tor.
## Requirements
- A Debian-based Linux distribution (e.g., Ubuntu,kalilinux).
- Root privileges to install dependencies and manage the Tor service.
- Active internet connection.
## Installation
**Step 1: Download and Install**
1. Clone the repository or download the files:

```bash
git clone https://github.com/s-r-e-e-r-a-j/NetShift.git
```
```bash
cd NetShift
```
```bash
cd NetShift
```
2. Run the install.sh script to set up NetShift:

```bash
sudo bash install.sh
```
Then Enter `y` For Install

## usage
**Step 1: Start NetShift**
After installation, start `NetShift` by running:

```bash
sudo netshift
```
**After Running The tool it will automatically Install necessary dependencies (Tor, curl, jq).**

**Step 2: Configure SOCKS Proxy**
To route your internet traffic through Tor, configure your applications to use the Tor SOCKS proxy:

- **Proxy Address:** `127.0.0.1`
- **Port:** `9050`

  
  ### Example Configuration:
- **Firefox:**

1. Go to `Settings > Network Settings > Manual Proxy Configuration`.
2. Set **SOCKS Host** to `127.0.0.1 `and **Port** to `9050`.
3. Select SOCKS v5.
4. Save the settings.

## How It Works
1. **Start Tor Service**: **NetShift** automatically starts the Tor service when launched.

2. **IP change:**

- Prompts the user for Enter Ip Address change interval (default: 60 seconds) and number of IP address change (0 for infinite).
- Reloads the Tor service to change identity and fetches the new IP address.

  
3 **Monitor New IP:** Displays the Tor-assigned IP after each IP Address change to verify successful anonymization.

## Example Output
```plaintext
     
  _   _      _    _____ _     _  __ _   
 | \ | |    | |  / ____| |   (_)/ _| |  
 |  \| | ___| |_| (___ | |__  _| |_| |_ 
 | . ` |/ _ \ __|\___ \| '_ \| |  _| __|
 | |\  |  __/ |_ ____) | | | | | | | |_ 
 |_| \_|\___|\__|_____/|_| |_|_|_|  \__|

* copyright of Sreeraj, 2024  *
* GitHub: https://github.com/s-r-e-e-r-a-j  *

Change your SOCKS to 127.0.0.1:9050

[+] Enter interval (seconds) between IP changes [default: 60]: 30
[+] Enter number of IP changes (0 for infinite): 5
[~] Changing identity...
[+] New IP: 185.220.101.34
[~] Changing identity...
[+] New IP: 89.45.67.120
```
## Stopping NetShift
- **Infinite Mode:** Press `Ctrl+C` to stop.
- **Fixed IP Address Change:** The script will automatically terminate after completing the specified number of cycles.

## uninstallation
```bash
cd NetShift
```
```bash
cd NetShift
```
```bash
 sudo bash install.sh
```
Then Enter `n` for uninstall
  
## License
This tool is open-source and available under the MIT License.


## Disclaimer
NetShift is for educational purposes only. Misuse of the tool could violate the terms of service of websites, services, or networks you access. Always use the tool responsibly and in accordance with applicable laws and regulations.




## Author
- **Sreeraj**
GitHub: https://github.com/s-r-e-e-r-a-j
