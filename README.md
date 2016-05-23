# gkm-website
The main website

# Docker run
The Image do not launch any daemon. You have use a webserver of your choice and share the `/tmp/geokretymap.org` directory.


# Docker compose
A `docker-compose.yml` file could look like this.

```
version: '2'
services:

  gkm-website:
    image: geokretymap/gkm-website
    container_name: gkm-website

  gkm-api-nginx:
    container_name: gkm-api-nginx
    image: geokretymap/gkm-api-nginx
    environment:
      - VIRTUAL_HOST=www.geokretymap.org,geokretymap.org
    volumes_from:
      - gkm-website
```
