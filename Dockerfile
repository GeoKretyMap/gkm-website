FROM jekyll/jekyll

COPY jekyll /srv/jekyll
COPY build.sh /usr/local/bin/

USER root
CMD [ "build.sh" ]
