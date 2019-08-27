.PHONY: configmap 

all: configmap

configmap:
	-kubectl delete configmap stashcache-origin-testny-config -n osg
	kubectl create configmap stashcache-origin-testny-config -n osg \
             --from-file=10-origin-authfile.cfg --from-file=public-origin-authfile \
             --from-file=20-network-setup.cfg \
             --from-file=20-image-init.sh

