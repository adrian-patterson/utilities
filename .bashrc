update() {
    sudo apt update -y
    sudo apt upgrade -y
}

vpn() {
    if [[ $@ == "-u" ]]; then
        nmcli con up IpVanishMontreal
        elif [[ $@ == "-d" ]]; then
        nmcli con down IpVanishMontreal
    fi
}