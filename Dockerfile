FROM jekyll/jekyll

ADD jekyll /srv/jekyll

RUN jekyll build --destination /tmp/geokretymap.org

VOLUME /tmp/geokretymap.org

CMD echo "Share /tmp/geokretymap.org with your favorite webserver"
