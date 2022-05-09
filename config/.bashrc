install() {
    sudo apt install $@ -y
}

autoremove() {
    sudo apt autoremove -y
}

update() {
    sudo apt update
    sudo apt upgrade -y --allow-downgrades
}

vpn() {
    if [[ $@ == "-u" ]]; then
        sudo wg-quick up wg0
        elif [[ $@ == "-d" ]]; then
	sudo wg-quick down wg0
    fi
}

fix() {
   sudo apt clean
   sudo apt --fix-missing update
}

