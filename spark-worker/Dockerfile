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

COPY sparkslave.conf /etc/supervisor/conf.d/sparkslave.conf

# Define default command.
ENTRYPOINT ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
