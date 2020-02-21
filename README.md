# MyLinuxConfig
Salvando configurações e downloads que eu possa querer fazer ao começar a usar uma nova distro.

Vou deixar um script que executa todos os passos de uma vez só, mas a intenção é dividir em blocos, ou seja, um script para cada área de uso(web scraping, desenvolvimento web, etc) ou para cada linguagem.

# Git

Primeiro é preciso baixar o git e adicionar uma chave SSH à conta associada.

`sudo apt-get install git`

para gerar chave:

`ssh-keygen -t rsa -b 4096 -C "youremail@mail.com"`

Após gerar a chave, navega-se até o diretório com a chave pública

`cd .ssh/`

`cat id_rsa.pub`

Depois basta copiar e colar a chave nas settings do GitHub para estabelecer a conexão.

Clonando esse repositório, basta rodar os scripts de acordo com a necessidade.

# Editores de texto

`sudo apt-get install vim`

`wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -`

`echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list`

`sudo apt update && sudo apt install sublime-text`

# Spotify

`sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886`

`echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list`

`sudo apt-get update`

`sudo apt-get install spotify-client`

# Python


Como o ip é essencial, a instalação é padrão.

`sudo apt-get update`

`sudo apt-get install build-essential`

Também considero virtualenvs necessárias.

`sudo pip3 install virtualenv`

Eu tive o seguinte erro ao executar a linha acima: `ModuleNotFoundError: No module named 'setuptools'`, que pode ser resolvido fazendo upgrade do pacote e depois executando novamente`sudo pip3 install virtualenv`

`pip install --upgrade setuptools`

## Web Scraping

para baixar tudo de uma vez:

`pip3 install wheel requests bs4 selenium`

para fazer um request diretamente e parsear o html:

`pip3 install wheel`

`pip3 install requests`

`pip3 install bs4`

para simular um navegador:

`pip3 install selenium`

não coloquei aqui o chromedriver ou o firefoxdriver, pois as versões podem mudar muito de uma máquina para outra, é algo que pode ser feito manualmente para o meu propósito.

## Web development

`pip3 install flask`

Não acho que valha a pena incluir extensões do flask no download rápido, mas vou deixar um script que é recomendável de se instalar numa virtualenv, para construir um blog com Flask.

`pip3 install flask Flask-WTF python-dateutil python-dotenv alembic Flask-Login Flask-Mail Flask-Migrate Flask-PyMongo Flask-SQLAlchemy`

# R

`sudo apt-get install r-base`

`sudo apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev`

Para instalar o tidyverse aparentemente não tem jeito(esses estatísticos...), é preciso entrar no R e digitar `install.packages("tidyverse")`
