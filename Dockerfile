FROM jekyll/jekyll

COPY jekyll /srv/jekyll

USER root
CMD [ "jekyll", "build", "--destination", "/data/geokretymap.org" ]
