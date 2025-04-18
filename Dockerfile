
FROM maven:3.8.5-openjdk-17-slim AS matrixapi

ARG ORS_VERSION=9.1.1
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && apt-get install -y git


RUN git clone https://github.com/GIScience/openrouteservice.git . && \
    git switch -c v${ORS_VERSION}


##########
# BUILDER #
##########

FROM matrixapi AS builder
RUN mvn package -DskipTests

#########
# RUNNER #
#########

FROM matrixapi AS runner
COPY --from=builder /app/ors-api/target/ors.jar /app/app.jar


COPY data.osm.pbf /app/data.osm.pbf
COPY ors-config.yml /app/ors-config.yml

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]
