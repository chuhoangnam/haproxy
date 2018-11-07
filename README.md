# HAProxy with `socat` package

This repository is dedicated to HAProxy to build a Docker Image with socat
package.

I have written a simple script to turn a server up/down inside a HAProxy
container using this image.

## To set a server up/down
`set-server [up/down] backend_name/server_name`

## To set a server up/down in docker
`docker exec -it haproxy set-server down backend-name/server-name`
