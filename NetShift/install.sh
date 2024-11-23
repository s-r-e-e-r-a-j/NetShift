#!/bin/bash

# Prompt the user for installation or uninstallation
echo "[+] To install, press (Y). To uninstall, press (N): "
read -r choice

if [[ "$choice" == "Y" || "$choice" == "y" ]]; then
    # Install the Bash tool
    chmod 777 netshift.sh
    mkdir -p /usr/share/netshift
    cp netshift.sh /usr/share/netshift/netshift.sh

    # Create executable wrapper
    cat <<EOL > /usr/bin/netshift
#!/bin/bash
exec /usr/share/netshift/netshift.sh "\$@"
EOL

    chmod +x /usr/bin/netshift
    chmod +x /usr/share/netshift/netshift.sh

    echo -e "\n\nCongratulations! NetShift is installed successfully."
    echo -e "From now, just type \033[1;32mnetshift\033[0m in the terminal."

elif [[ "$choice" == "N" || "$choice" == "n" ]]; then
    # Uninstall the Bash tool
    rm -rf /usr/share/netshift
    rm -f /usr/bin/netshift

    echo "[!] NetShift has been removed successfully."
else
    # Invalid choice
    echo "[!] Invalid choice. Exiting."
fi
