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
    ...
    (classic)ubuntu@localhost:~$ sudo apt update
    (classic)ubuntu@localhost:~$ exit
    $

The environment is very lightweight and full hardware and network
access is possible.

## Restrictions

Daemons are not started in the classic dimension and all running
background binaries will exit when the classic dimension is closed.


## Future

We also plan to have a generic `snap shell` feature, once that lands
`sudo classic` will be replaced with `snap shell classic`.

## Auto Builds

This branch is automatically mirrored into the https://launchpad.net/classic-snap project to the https://code.launchpad.net/~snappy-dev/classic-snap/+git/classic-snap/+ref/master tree.

Automatic snap builds and uploads to the edge channel happen for every commit in the master branch at https://code.launchpad.net/~snappy-dev/+snap/classic 

If you made a commit, please test the resulting snap package from edge and make sure it gets promoted to the beta channel after a successful test run.
