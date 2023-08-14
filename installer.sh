#!/bin/bash
# coloring 
GR="\033[1;32m"
RST="\033[0m"
	echo "instalasi untuk Debian/Ubuntu"
	sleep 1
	sudo apt update
	sudo apt install pv golang git libpcap-dev -y 
	cd ~ && mkdir detool && cd detool
	git clone https://github.com/tomnomnom/assetfinder.git
	cd assetfinder && go build main.go && mv main assetfinder && sudo mv assetfinder /usr/local/bin/
	cd ../
	git clone https://github.com/aboul3la/Sublist3r.git
	cd Sublist3r && pip install -r requirements.txt && sudo python3 setup.py install 
	go install -v github.com/tomnomnom/anew@latest
	go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
	go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
	go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
	sudo mv ~/go/bin/* /usr/local/bin/
	echo ""
	echo -e "$GR[RSBB] - Installation Successfully at $(date)$RST" | pv -qL 4
