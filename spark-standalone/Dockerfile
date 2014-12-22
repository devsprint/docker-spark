FROM omriiluz/spark-base:1.2

MAINTAINER omri@iluz.net

# Install Supervisor.
USER root
RUN \
  apt-get update && \
  apt-get install -y supervisor && \
  rm -rf /var/lib/apt/lists/* && \
  sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf

# Define mountable directories.
VOLUME ["/etc/supervisor/conf.d"]

# Define working directory.
WORKDIR /etc/supervisor/conf.d

COPY sparkmaster.conf /etc/supervisor/conf.d/sparkmaster.conf
COPY sparkslave.conf /etc/supervisor/conf.d/sparkslave.conf

EXPOSE 8080 4040 7077 10000

# Define default command.
ENTRYPOINT ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
