
sh 3.run.sh

docker exec overpass_web /srv/osm3s/bin/init_osm3s.sh /usr/src/app/planet/planet.osm.bz2 /srv/osm3s/db /srv/osm3s --meta && rm -f /usr/src/app/planet/planet.osm.bz2

docker exec overpass_web /etc/init.d/overpass stop
docker exec overpass_web /etc/init.d/overpass start
