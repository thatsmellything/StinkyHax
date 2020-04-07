DoS Via overload of new IP addresses
------------------------------------

First you will want to open up etherape in su mode

sudo etherape

this will show you all of the connected mac adresses

and stuff like that in a nice fancy graph

then you will want to use macof to actually

create the DOS

basically all you need to do is type the interface

and then the amount of connections you would like

to have

ie

sudo macof -i wlan0 -n 1000

this will use the wireless interface and create

1000 fake mac adresses connect to the router

DoS Via Router Advertisement spam
---------------------------------

One super easy way to send tons of advertisements to a router is this

atk6-flood-router6 \<interface\>

Enter wlan0 or eth0 for the interface

atk6-flood_mldrouter6 \<interface\> does basically the same thing and idk what's
different
