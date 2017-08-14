FROM docker.elastic.co/logstash/logstash:5.5.1
MAINTAINER doktoric


RUN logstash-plugin install logstash-filter-json

ADD	/logstash/config/logstash.yml /usr/share/logstash/config/logstash.yml
ADD /logstash/pipeline /usr/share/logstash/pipeline
CMD ["-f", "/usr/share/logstash/pipeline/logstash.conf"]
