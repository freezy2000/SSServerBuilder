read -p "Please input your command:(1:Start  2:Stop  3:Restart)" x
declare -i x

if [ "$x" == "" ];then
    echo "You don't input your anykey"
    exit 5
fi

if [[ "$x" -eq "1" ]];then
    echo "Start Shadowsock server!"
    ssserver -c /etc/shadowsock/shadowsocks.json -d start
elif [[ "$x" -eq "2" ]];then
    echo "Stop Shadowsock server!"
    ssserver -c /etc/shadowsock/shadowsocks.json -d stop
elif [[ "$x" -eq "3" ]];then
    echo "Restart Shadowsock server!"
    ssserver -c /etc/shadowsock/shadowsocks.json -d restart
fi
