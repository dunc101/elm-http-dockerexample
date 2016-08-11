FROM frolvlad/alpine-oraclejdk8:slim
EXPOSE 8080
VOLUME /tmp
ADD elm-examples-1.4.0-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]




docker run --hostname splunk.172.17.0.1.xip.io -p 8000:8000 -p 8088:8088 -d --env SPLUNK_START_ARGS="--accept-license --answer-yes --no-prompt" outcoldman/splunk:latest
 docker exec -it 387a7155fa51 /bin/bash