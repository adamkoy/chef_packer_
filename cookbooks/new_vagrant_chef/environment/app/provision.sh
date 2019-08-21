sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y && sudo apt-get upgrade -y


# install nginx
sudo apt-get install ruby2.4 ruby2.4-dev ruby-build -y
sudo apt-get install build-essential libgmp-dev libxml2 -y
sudo apt-get install nginx -y

sudo systemctl restart nginx

#Reverse Proxy Server
#trying to delete the file from nginx/default to replace later
#symbolic link - a shortcut

sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/ubuntu/app/default  /etc/nginx/sites-enabled/default


#Install nodejs, Node
sudo apt-get install curl
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo apt-get install nodejs -y



# Install gems
sudo gem install bundler
sudo gem install rake
sudo gem install rails

cd /home/ubuntu/app
nodejs app.js
