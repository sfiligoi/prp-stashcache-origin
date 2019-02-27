.PHONY: configmap 

all: configmap

configmap:
	-kubectl delete secret stashcache-origin-merra2-config -n osg
	kubectl create secret generic stashcache-origin-merra2-config -n osg \
             --from-file=10-origin-site-local.cfg --from-file=20-network-setup.cfg \
             --from-file=public-origin-authfile --from-file=xcache_pod_init.sh

