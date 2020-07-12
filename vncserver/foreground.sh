sed s/5900/59000/ /usr/bin/vncserver > ./vncserver
chmod 755 ./vncserver

printf "password\npassword\n\n" | vnc4passwd
nohup ./vncserver -geometry 1366x768

sudo apt update
sudo apt -y install chromium-browser

