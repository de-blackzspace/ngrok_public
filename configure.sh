#!/bin/bash
# configure.sh


# Auhtor: BlackLeakz
# Website: https:// blackzspace.de
# Github:


export auth_setup="https://dashboard.ngrok.com/get-started/your-authtoken"
export setup_install="https://dashboard.ngrok.com/get-started/setup/linux"
export endpoints="https://dashboard.ngrok.com/cloud-edge/endpoints"
export edges="https://dashboard.ngrok.com/cloud-edge/edges"
export domains="https://dashboard.ngrok.com/cloud-edge/domains"
export tcp_addresses="https://dashboard.ngrok.com/cloud-edge/tcp-addresses"
export agents="https://dashboard.ngrok.com/tunnels/agents"
export authtokens="https://dashboard.ngrok.com/tunnels/authtokens"
export ssh_pub_keys="https://dashboard.ngrok.com/tunnels/ssh-keys"
export ingress="https://dashboard.ngrok.com/tunnels/ingress"
export events="https://dashboard.ngrok.com/observability/event-subscriptions"
export traffic_inspector="https://dashboard.ngrok.com/ac_2d12m80IeryvRGuBamx11laGn61/observability/traffic-inspector"
export api="https://dashboard.ngrok.com/api"
export ip_pol="https://dashboard.ngrok.com/security/ip-policies"
export ip_res="https://dashboard.ngrok.com/security/ip-restrictions"
export tls_cert="https://dashboard.ngrok.com/security/tls/certs"
export tls_cert_auth="https://dashboard.ngrok.com/security/tls/cert-authorities"
export bot_user="https://dashboard.ngrok.com/users/bots"


export ephemeral_domain="ngrok http http://localhost:8080"
export static_domain="ngrok http --domain=$domain 80"

echo -n "Console > Ngrok Configure Assistant started!"
mkdir -p ~/.ngrok_config/.logs
mkdir -p ~/.ngrok_config/.data
mkdir -p ~/.ngrok_config/.cache

cd ~/.ngrok_config


function set_token() {
    echo -n "Console > Set Authentication-Token NOW !!!"
    read -p "authentication-token:~$ " token 
    echo -n "Console > Authentication Token SET TO: $token" >> ~/.ngrok_config/.logs/ngrok.log
    echo -n "$token" >> ~/.ngrok_config/.data/auth.token
    echo -n "Console > Token-Settings saved to: ~/.ngrok_config/.data/auth.token" >> ~/.ngrok_config/.logs/ngrok.log
    cat ~/.ngrok_config/.log/ngrok.log
    
    
}

function print_conf() {
    for f in ~/.ngrok_config/.data/*;
do
	cat ~/.ngrok_config/.logs/$f;
done

    
}
function open_browser() {

while true;
do

echo "export auth_setup="https://dashboard.ngrok.com/get-started/your-authtoken"
export setup_install="https://dashboard.ngrok.com/get-started/setup/linux"
export endpoints="https://dashboard.ngrok.com/cloud-edge/endpoints"
export edges="https://dashboard.ngrok.com/cloud-edge/edges"
export domains="https://dashboard.ngrok.com/cloud-edge/domains"
export tcp_addresses="https://dashboard.ngrok.com/cloud-edge/tcp-addresses"
export agents="https://dashboard.ngrok.com/tunnels/agents"
export authtokens="https://dashboard.ngrok.com/tunnels/authtokens"
export ssh_pub_keys="https://dashboard.ngrok.com/tunnels/ssh-keys"
export ingress="https://dashboard.ngrok.com/tunnels/ingress"
export events="https://dashboard.ngrok.com/observability/event-subscriptions"
export traffic_inspector="https://dashboard.ngrok.com/ac_2d12m80IeryvRGuBamx11laGn61/observability/traffic-inspector"
export api="https://dashboard.ngrok.com/api"
export ip_pol="https://dashboard.ngrok.com/security/ip-policies"
export ip_res="https://dashboard.ngrok.com/security/ip-restrictions"
export tls_cert="https://dashboard.ngrok.com/security/tls/certs"
export tls_cert_auth="https://dashboard.ngrok.com/security/tls/cert-authorities"
export bot_user="https://dashboard.ngrok.com/users/bots""


    read -p "Open:~$ " choice
    xdg-open $choice
    esac
    done
    
}
function deploy_app() {
    while true;
    do
    echo "============================"
    echo "== DEPLOY APP || Ngrok    =="
    echo "============================"
    echo "==1:Ephemeral | 2:Static  =="
    echo "============================"
    read -p "Console > " x
    case $x in 
        1) 
    
}

function view_log() {
    cd ~/.ngrok_config/.logs
    ls -lh ~/.ngrok_config/.logs
    tree
    for f in ./*;
do
	cat ~/.ngrok_config/.logs/$f;
done


    
}


function open_folder() {
    cd ~/.ngrok_config
    ls -lh *.*
    tree 
        for f in ./*;
do
    echo -n "FOUND: $f"
    ls -lh $f
	cat $f;
done
    

}

while true;
do
echo "================================================"
echo "== Ngrok Configuration Assistent | v0.1|bs.de =="
echo "================================================"
echo "== 1: Set Auth-Token   |  2: Deploy app       =="
echo "==      (s|S): Set DOMAIN Target              =="
echo "==        3: Open Setup(Browser)              =="
echo "== 4: Print current Config !|| q/Q = quit !   =="
echo "== 5: View Log    |  6: Open Folder           =="
echo "================================================"
read -p "Console > " x

case $x in 
    1) set_token; continue;;
    2) deploy_app; continue;;
    3) open_browser; continue;;
    4) print_conf; continue;;
    5) view_log; continue;;
    6) open_folder; conitnue;;
    s|S) echo -n "Attention!: You may only need this option for using a static domain!!" && read -p "Enter Target-Domain:~$ " domain && echo -n "$domain" >> ~/.ngrok_config/.data/target.domain && echo -n "Conosle > Set target-domaion to: $domain" >> ~/.ngrok_config/.logs/ngrok.log && cat ~/.ngrok_config/.logs/ngrok.log; continue;;  
    *) echo -n "Console > Invalid input"; continue;;
esac


done
read -p "Enter Authentication-Token:~$ " token