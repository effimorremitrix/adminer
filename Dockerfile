FROM adminer:5.4.2

# Upgrade libpq and PostgreSQL client to a newer version to support modern SSL/TLS features
USER root
RUN apk add --no-cache postgresql16-client

USER adminer

# change this to your preferred design.
# Full list at https://github.com/vrana/adminer/tree/master/designs
ENV ADMINER_DESIGN nette

# Plugins enabled by default.
# Full list here: https://www.adminer.org/en/plugins/
ENV ADMINER_PLUGINS "dump-alter dump-json dump-zip dump-bz2 tables-filter"
