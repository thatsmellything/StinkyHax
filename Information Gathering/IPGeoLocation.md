Geolocate IP
============

sudo apt-get install geoip-bin

geoiplookup 80.60.233.195

How to update it

cd /usr/share/GeoIP/

wget
http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz

gunzip GeoIP.dat.gz

Make even more percise make sure to run some things i sudo

cd /usr/share/GeoIP/

wget <http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz>

gunzip GeoLiteCity.dat.gz

geoiplookup -f /usr/share/GeoIP/GeoLiteCity.dat 216.58.197.78

Output

GeoIP City Edition, Rev 1: US, CA, California, Mountain View, 94043, 37.419201,
-122.057404, 807, 650

git clone <https://github.com/maldevel/IPGeoLocation>

pip3 install -r requirements.txt --user

Cd IPGeolocation

./ipgeolocation.py -m (Scans your ip and tells you where you are)

./ipgeolocation.py -t [IP ADDRESS] (Scans ip and tells location info)
