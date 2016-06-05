#!/bin/sh

echo api_url: ${GKM_API_URL:-https://api.geokrety.org} > /srv/jekyll/_data/gkm.yml

jekyll build --destination /data/geokretymap.org
