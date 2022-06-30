#####################################################################################
service=airenas/docker-kaldi-gstreamer-server
version=0.1.0
########### DOCKER ##################################################################
tag=$(service):$(version)

dbuild: 
	docker build -t $(tag) .

dpush: dbuild
	docker push $(tag)
#####################################################################################
.PHONY:
	dbuild dpush
