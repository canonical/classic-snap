# Classic dimension for snappy

This snap allows to run a "classic" ubuntu environment on a Snappy
system. This means that the traditional package management tools like
apt and dpkg are available in this environment. It also means that
tools like `gdb`, `tcpdump`, `strace` and `valgrind` (to name a few)
are just a simple `apt install strace` away.

## How to use it

Run the following commands on an all-snap image:

    $ sudo snap install --beta --devmode classic
    $ sudo classic
    (classic)ubuntu@localhost:~$ sudo apt update
    ...
    (classic)ubuntu@localhost:~$ exit

The environment is very lightweight and full hardware and network
access is possible.

## Restrictions

Daemons are not started in the classic dimension and all running
background binaries will exit when the classic dimension is closed.


## Future

We also plan to have a generic `snap shell` feature, once that lands
`sudo classic` will be replaced with `snap shell classic`.
