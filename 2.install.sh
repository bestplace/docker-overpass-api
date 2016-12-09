docker run -d -p 80:80 --name overpass_web -v "$(pwd)/planet":/usr/src/app/planet mediasuite/overpass-api:tst1


docker exec overpass_web /srv/osm3s/bin/init_osm3s.sh /usr/src/app/planet/planet.osm.bz2 /srv/osm3s/db /srv/osm3s --meta && rm -f /usr/src/app/planet/planet.osm.bz2
