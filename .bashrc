install() {
    sudo apt install $@ -y
}

autoremove() {
    sudo apt autoremove -y
}

update() {
    sudo apt update -y --allow-downgrades
    sudo apt upgrade -y --allow-downgrades
}

vpn() {
    if [[ $@ == "-u" ]]; then
        nmcli con up IpVanishMontreal
        elif [[ $@ == "-d" ]]; then
        nmcli con down IpVanishMontreal
    fi
}