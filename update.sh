#!/bin/bash
clear

# Cek dan install lolcat jika belum ada
if ! command -v lolcat &>/dev/null; then
    apt-get install -y ruby >/dev/null 2>&1
    gem install lolcat >/dev/null 2>&1
fi

fun_bar() {
    local CMD1="$1"
    (
        [[ -e $HOME/fim ]] && rm -f $HOME/fim
        $CMD1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm -f $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}

res1() {
    REPO="https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main"
    cd /tmp
    wget -q "${REPO}/menu/menu.zip" -O menu.zip
    unzip -o menu.zip >/dev/null 2>&1
    chmod +x menu/*
    cp -f menu/* /usr/local/sbin/
    rm -rf menu menu.zip

    wget -q -O /tmp/fv-tunnel "${REPO}/config/fv-tunnel"
    chmod +x /tmp/fv-tunnel
    bash /tmp/fv-tunnel
    rm -f /tmp/fv-tunnel

    cd /usr/local/sbin
    for f in menu m-sshws addssh addtr addss menu-backup backup regis addhost; do
        rm -f "$f"
        wget -q "${REPO}/menu/$f"
        chmod +x "$f"
    done
    cd /root
}

netfilter-persistent reload >/dev/null 2>&1 || true
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e " \e[1;97;101m UPDATE SCRIPT SEDANG BERJALAN !             \e[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
echo -e "  \033[1;91m Update Script Service\033[1;37m"
fun_bar res1
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
