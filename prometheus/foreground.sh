wget https://github.com/prometheus/prometheus/releases/download/v2.19.0/prometheus-2.19.0.linux-amd64.tar.gz
tar xvzf prometheus-2.19.0.linux-amd64.tar.gz
wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0/node_exporter-1.0.0.linux-amd64.tar.gz
tar xvzf node_exporter-1.0.0.linux-amd64.tar.gz
wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.17.0/blackbox_exporter-0.17.0.linux-amd64.tar.gz
tar xvzf blackbox_exporter-0.17.0.linux-amd64.tar.gz

cd node_exporter-1.0.0.linux-amd64/
nohup ./node_exporter &
cd ../

cd cd blackbox_exporter-0.17.0.linux-amd64/
mv blackbox.yml blackbox.yml.org
wget 
cd ../

cd prometheus-2.19.0.linux-amd64/
mv prometheus.yml prometheus.yml.org
wget https://raw.githubusercontent.com/kitazaki/katacoda-scenarios/master/prometheus/prometheus.yml
nohup ./prometheus &
cd ../

