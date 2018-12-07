#Get dependencies
apt-get update
apt-get -y install build-essential autoconf libtool libgmp3-dev libssl-dev wget software-properties-common git postgresql postgresql-contrib

#Erlang and Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
apt-get update
apt-get install -y esl-erlang=1:20.3.6
apt-get -y install elixir=1.6.5-1

## Stop Erlang and Elixir from being upgraded
```
sudo apt-mark hold esl-erlang
sudo apt-mark hold elixir
```

#Geth
add-apt-repository -y ppa:ethereum/ethereum
apt-get update
apt-get -y install geth

#Virtualenv
apt-get -y install python3-pip
pip3 install virtualenv
virtualenv DEV
source DEV/bin/activate

#Solc
sudo apt-get install libssl-dev solc

#Rebar
mix do local.hex --force, local.rebar --force

#clone repo
git clone https://github.com/omisego/elixir-omg
git checkout v0.0.1

# contract building requires character encoding to be set
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
pip3 install -r elixir-omg/contracts/requirements.txt

#build!
cd elixir-omg
mix deps.get
