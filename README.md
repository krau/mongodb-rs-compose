# MongoDB replica set with Docker Compose

```bash
git clone https://github.com/krau/mongodb-rs-compose
cd mongodb-rs-compose
chmod +x gen-keyfile.sh
chmod +x custom-entrypoint.sh
./gen-keyfile.sh
docker compose up -d
```

or

```bash
chmod +x start.sh
./start.sh
```

## Configuration

- `MONGO_INITDB_ROOT_USERNAME`: MongoDB root username
- `MONGO_INITDB_ROOT_PASSWORD`: MongoDB root password