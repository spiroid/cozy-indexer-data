FROM busybox
MAINTAINER Jonathan Dray <jonathan.dray@gmail.com>

# Create Cozy users, without home directories
# Set uid and gid based on other debian containers
RUN addgroup cozy-data-system -g 1001 \
&& adduser -H -S -u 1001 -G cozy-data-system cozy-data-system

RUN mkdir -p /usr/local/var/cozy/data-system/indexes
RUN chown -R cozy-data-system:cozy-data-system /usr/local/var/cozy/data-system

VOLUME ["/usr/local/var/cozy/data-system/indexes"]