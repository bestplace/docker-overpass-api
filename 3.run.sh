docker run -d -p 4326:80 --name overpass_web -v "$(pwd)/planet":/usr/src/app/planet -v "$(pwd)/live_db":/srv/osm3s/db mediasuite/overpass-api:tst1
