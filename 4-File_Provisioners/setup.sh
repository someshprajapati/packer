sleep 30
echo Installation of Nginx started

sudo apt-get update
sudo apt-get install -y nginx
systemctl enable nginx
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable

echo Installation of Nginx completed