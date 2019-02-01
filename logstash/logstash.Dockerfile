FROM docker.elastic.co/logstash/logstash:6.5.4
USER root
RUN mkdir -p config 
COPY logstash.conf /config/logstash.conf
COPY template.schema.json /config/template.schema.json
