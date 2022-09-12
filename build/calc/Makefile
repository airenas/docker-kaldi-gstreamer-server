-include Makefile.options
#####################################################################################
service=intelektikalt/docker-kaldi-calc
version=0.1.1
########### DOCKER ##################################################################
tag=$(service):$(version)
data:
	mkdir -p $@

mark/update:
	rm -f data/.version	
data/.version: | data
	rsync -avzh $(main_dir)/lt_audiocalc data/lt_audiocalc/
	rsync -avzh $(main_dir)/audiocalc.yaml data/
	echo "Ver  : $(version)" > $@
	echo "Date : `date`" >> $@

.PHONY: download/model
dbuild: | data/.version
	docker build -t $(tag) .
dpush: dbuild
	docker push $(tag)
#####################################################################################
clean:
	rm -rf data
.PHONY:
	dbuild dpush clean
