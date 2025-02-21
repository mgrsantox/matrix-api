##### Download the osm file from Geofabrik and named `data.osm.pbf` in root directory.

`https://download.geofabrik.de/`

#### Run the server

`docker compose up`

#### Check the status

`http://localhost:8180/ors/v2/health`

#### Example direction API

`http://localhost:8180/ors/v2/directions/driving-car?start=85.30739436541126,27.706486193097007&end=85.35082147419388,27.685222080651073`
