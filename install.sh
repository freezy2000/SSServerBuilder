##To install pip, securely download get-pip.py
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

##Then run the following:
python get-pip.py

##To install shadowsocks
pip install shadowsocks

##Download Config file from github
curl https://github.com/freezy2000/SSServerBuilder/shadowsocks.json -o shadowsocks.json

mkdir /etc/shadowsock
mv shadowsocks.json /etc/shadowsock/

##Download SSStart and SSStop file
curl https://github.com/freezy2000/SSServerBuilder/ssstart.sh
curl https://github.com/freezy2000/SSServerBuilder/ssstop.sh

chmod +x ssstart.sh
chmod +x ssstaop.sh

##Modify congfig file
read -n1 -p "Please modify /ect/shadowsock/shadowsocks.json"
vi /ect/shadowsock/shadowsocks.json
