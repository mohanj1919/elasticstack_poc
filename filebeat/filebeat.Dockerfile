FROM docker.elastic.co/beats/filebeat:6.5.4
USER root
RUN mkdir -p config
COPY ./test.log /usr/share/filebeat/config/test.log
COPY ./filebeat.yml /usr/share/filebeat/filebeat.yml
# COPY ./filebeat.yml /usr/share/filebeat/config/filebeat.yml
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN chown root:filebeat /usr/share/filebeat/config/test.log
USER filebeat
