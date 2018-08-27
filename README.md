# Installation via Vagrant
Installation by Vagrant will be eventually merged into [Goban](https://github.com/omisego/goban).

## Prerequisites
* Ensure that [Vagrant](https://www.vagrantup.com/) installed on your local machine

Clone this repository:
```
https://github.com/omisego/xomg-vagrant
```

Run:
```
cd omg-vagrant
vagrant up --provision
```

Wait a few minutes for all the dependencies to finish installing

SSH into vagrant and run tests to check that everything was built successfully:
```
vagrant ssh
```

`cd` into the project root and run a test to see if the installation works correctly
```
mix test
```
Continue the [Getting Started guide](https://github.com/omisego/elixir-omg)