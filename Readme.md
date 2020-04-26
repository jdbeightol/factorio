# Factorio Docker

A minimum viable docker configuration to build and run the latest version of
a factorio server.

## Execution

1. Clone this repository.
2. Update or replace the provided `server-settings.json`.  See the factorio
   example configuration for more information. 
3. Build the docker image.
```
docker build -t factorio:latest .
```
4. Create a `saves` directory with your save game file named, `savegame.zip`.
   This is a hardcoded opinion, so no other save name will work.
5. Start a docker container from the image.
```
docker run -i -v "$PWD"/saves:/opt/factorio/saves -p 34197:34197/udp factorio:latest
```
6. (Optional) The factorio server does not appear to respect graceful shutdown
   commands when running in docker.  To shut down the server, you will need to
   use the `docker kill` command.  You can look up the container ID with
   `docker ps`.
