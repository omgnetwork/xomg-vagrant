# Installation via Vagrant
To ease out the process of Installing `elixir-omg` we have set up a simple process utilizing Vagrantfile and a simple bootstrap script

*note: installation by Vagrant will be eventually merged into [Goban](https://github.com/omisego/goban).

## Prerequisites
* Ensure that [Vagrant](https://www.vagrantup.com/) installed on your local machine

Clone this repository:
```
$ git clone https://github.com/omisego/xomg-vagrant
```

Run:
```
$ cd xomg-vagrant
$ vagrant up --provision
```

Wait a few minutes for all the dependencies to finish installing

SSH into vagrant and run tests to check that everything was built successfully:
```
$ vagrant ssh
```

configure the correct encoding and python version
```
[vagrant]$ source DEV/bin/activate

[vagrant]$ export LC_ALL=C.UTF-8
[vagrant]$ export LANG=C.UTF-8
[vagrant]$ cd elixir-omg
[vagrant]$ sudo pip3 install -r contracts/requirements.txt
```

run a test to see if the installation works correctly
```

[vagrant]$ sudo mix test 
```
Continue the [Getting Started guide](https://github.com/omisego/elixir-omg)