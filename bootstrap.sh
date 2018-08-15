#Get dependencies
apt-get update
apt-get -y install build-essential autoconf libtool libgmp3-dev libssl-dev wget software-properties-common git

#Erlang and Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
apt-get update
apt-get install -y esl-erlang=1:20.3.6
apt-get -y install elixir

#Geth
add-apt-repository -y ppa:ethereum/ethereum
apt-get update
apt-get -y install geth

#Virtualenv
apt-get -y install python3-pip
pip3 install virtualenv
virtualenv DEV
source DEV/bin/activate

#Populus
wget https://github.com/omisego/elixir-omg/blob/develop/populus/requirements.txt
pip3 install -r populus/requirements.txt

#solc
sudo apt-get install libssl-dev solc

#rebar
mix do local.hex --force, local.rebar --force
