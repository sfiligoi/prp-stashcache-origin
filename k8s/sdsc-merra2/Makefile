.PHONY: configmap 

all: configmap

configmap:
	-kubectl delete configmap stashcache-origin-merra2-config -n osg
	kubectl create configmap stashcache-origin-merra2-config -n osg \
             --from-file=10-origin-authfile.cfg --from-file=public-origin-authfile \
             --from-file=20-network-setup.cfg \
             --from-file=xcache_pod_init.sh

