FROM airenas/docker-kaldi-gstreamer-server:0.1.2
MAINTAINER Airenas Vaičiūnas <airenass@gmail.com>

COPY data /opt/models

EXPOSE 80

CMD ["/opt/start_service.sh", "-y", "/opt/models/audiocalc.yaml"]
