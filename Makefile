#####################################################################################
service=airenas/docker-kaldi-gstreamer-server
version=0.2.3
########### DOCKER ##################################################################
tag=$(service):$(version)

dbuild: 
	docker build -t $(tag) .

dpush: dbuild
	docker push $(tag)
#####################################################################################
.PHONY:
	dbuild dpush

start/ssh: 
	docker run -it -p 9090:80 -v $(CURDIR)/test:/opt/models $(tag) /bin/bash
	# /opt/start.sh -y /opt/models/chain_nnet3.yaml