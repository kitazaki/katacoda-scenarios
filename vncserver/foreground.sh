sudo apt update
sudo apt -y install chromium-browser

sed s/5900/59000/ /usr/bin/vncserver > ./vncserver
chmod 755 ./vncserver


