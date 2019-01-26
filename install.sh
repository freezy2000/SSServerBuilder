##To install pip, securely download get-pip.py
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

##Then run the following:
python get-pip.py

##To install shadowsocks
pip install shadowsocks

##Download Config file from github
curl https://raw.githubusercontent.com/freezy2000/SSServerBuilder/master/config.json -o shadowsocks.json

mkdir /etc/shadowsock/
mv -f shadowsocks.json /etc/shadowsock/

##Download SSStart and SSStop file
curl https://raw.githubusercontent.com/freezy2000/SSServerBuilder/master/SSServerBuilder/ssstart.sh -o ssstart.sh
curl https://raw.githubusercontent.com/freezy2000/SSServerBuilder/master/SSServerBuilder/ssstop.sh -o ssstop.sh

chmod +x ssstart.sh
chmod +x ssstaop.sh

##Modify congfig file
read -n1 -p "Please modify /ect/shadowsock/shadowsocks.json"
vi /etc/shadowsock/shadowsocks.json
