#Gets the key to the server, to access it / similar to captcha/
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install mongodb-org -y

#removes the configureation file and adds an own one
# etc says as esty
sudo rm /etc/mongod.conf
# symbolic link - a shortcut
sudo ln -s /home/ubuntu/environment/mongod.conf /etc/mongod.conf
sudo cp /home/ubuntu/environment/mongod.service /etc/systemd/system/mongod.service

# restart it again to get the new config files
sudo systemctl restart mongod
sudo systemctl enable mongod
