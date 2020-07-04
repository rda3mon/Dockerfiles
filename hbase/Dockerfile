#FROM openjdk:8-jre-slim-buster
FROM openjdk:8-jre-buster

MAINTAINER mallikvarjun@gmail.com

COPY hbase/bin /opt/hbase/bin
COPY hbase/lib /opt/hbase/lib
COPY hbase/conf /opt/hbase/conf
COPY entrypoint.sh /
VOLUME ["/etc/hbase"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/opt/hbase/conf"]
