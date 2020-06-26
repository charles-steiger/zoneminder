#!/bin/bash

docker run -d --name="zoneminder" \
--net="bridge" \
--privileged="true" \
-p 8443:443/tcp \
-p 9000:9000/tcp \
-e TZ="America/Chicago" \
-e SHMEM="50%" \
-e PUID="99" \
-e PGID="100" \
-e INSTALL_HOOK="0" \
-e INSTALL_FACE="0" \
-e INSTALL_TINY_YOLO="0" \
-e INSTALL_YOLO="0" \
-e MULTI_PORT_START="0" \
-e MULTI_PORT_END="0" \
-v "/home/docker/zoneminder/cache/appdata/zoneminder":"/config":rw \
-v "/home/docker/zoneminder/cache/appdata/zoneminder/data":"/var/cache/zoneminder":rw \
dlandon/zoneminder
