# MongoDB replica set with Docker Compose

```bash
git clone https://github.com/krau/mongodb-rs-compose
cd mongodb-rs-compose
chmod +x gen-keyfile.sh
chmod +x custom-entrypoint.sh
./gen-keyfile.sh
docker compose up -d
```