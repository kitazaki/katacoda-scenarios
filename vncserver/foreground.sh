#sed s/5900/59000/ /usr/bin/vncserver > ./vncserver
#chmod 755 ./vncserver
#nohup ./vncserver -geometry 1366x768
#./ngrok tcp 59001

#apt update
nohup apt -y install vnc4server xfce4 xfce4-goodies

printf "password\npassword\n\n" | vnc4passwd
nohup vncserver -geometry 1366x768

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip *.zip
./ngrok authtoken 6WmXHUKPtB1YRbMruN1ad_3eXyrP6sdYdJVZnNAZjnf
./ngrok tcp 5901
