wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip *.zip
wget https://github.com/mailhog/MailHog/releases/download/v0.2.1/MailHog_linux_amd64
chmod +x MailHog_linux_amd64

nohup ./MailHog_linux_amd64 &

./ngrok authtoken 6WmXHUKPtB1YRbMruN1ad_3eXyrP6sdYdJVZnNAZjnf
./ngrok tcp 1025

