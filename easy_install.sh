sudo apt-get install vim
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
sudo apt-get install build-essential
pip3 install --upgrade setuptools
sudo pip3 install virtualenv
pip3 install wheel requests bs4 selenium
pip3 install flask Flask-WTF python-dateutil python-dotenv alembic Flask-Login Flask-Mail Flask-Migrate Flask-PyMongo Flask-SQLAlchemy
sudo apt-get install r-base
sudo apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev
