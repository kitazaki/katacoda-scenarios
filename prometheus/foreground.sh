wget https://github.com/prometheus/prometheus/releases/download/v2.19.0/prometheus-2.19.0.linux-amd64.tar.gz
tar xvzf prometheus-2.19.0.linux-amd64.tar.gz
wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0/node_exporter-1.0.0.linux-amd64.tar.gz
tar xvzf node_exporter-1.0.0.linux-amd64.tar.gz
wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.17.0/blackbox_exporter-0.17.0.linux-amd64.tar.gz
tar xvzf blackbox_exporter-0.17.0.linux-amd64.tar.gz
wget https://github.com/prometheus/alertmanager/releases/download/v0.21.0/alertmanager-0.21.0.linux-amd64.tar.gz
tar xvzf alertmanager-0.21.0.linux-amd64.tar.gz

#wget https://bintray.com/artifact/download/nlamirault/oss/speedtest_exporter-0.3.0_linux_amd64
#chmod 764 speedtest_exporter-0.3.0_linux_amd64
#nohup ./speedtest_exporter-0.3.0_linux_amd64

cd node_exporter-1.0.0.linux-amd64/
nohup ./node_exporter &
cd ../

cd blackbox_exporter-0.17.0.linux-amd64/
mv blackbox.yml blackbox.yml.org
wget https://raw.githubusercontent.com/kitazaki/katacoda-scenarios/master/prometheus/blackbox.yml
nohup ./blackbox_exporter --config.file="blackbox.yml" &
cd ../

#cd alertmanager-0.21.0.linux-amd64/
#mv alertmanager.yml alertmanager.yml.org
#wget https://raw.githubusercontent.com/kitazaki/katacoda-scenarios/master/prometheus/alertmanager.yml
#nohup ./alertmanager &
#cd ../

cd prometheus-2.19.0.linux-amd64/
mv prometheus.yml prometheus.yml.org
wget https://raw.githubusercontent.com/kitazaki/katacoda-scenarios/master/prometheus/prometheus.yml
wget https://raw.githubusercontent.com/kitazaki/katacoda-scenarios/master/prometheus/alert_rules.yml
nohup ./prometheus &
cd ../
