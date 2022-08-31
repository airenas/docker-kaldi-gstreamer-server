-include Makefile.options
#####################################################################################
service=intelektikalt/docker-kaldi-calc
version=0.1.0
########### DOCKER ##################################################################
tag=$(service):$(version)
data:
	mkdir -p $@

data/audiocalc.yaml: | data
	scp -r $(main_dir)/lt_audiocalc data/lt_audiocalc/
	scp $(main_dir)/audiocalc.yaml data/

dbuild: | data/audiocalc.yaml
	docker build -t $(tag) .

dpush: dbuild
	docker push $(tag)
#####################################################################################
clean:
	rm -rf data
.PHONY:
	dbuild dpush clean
