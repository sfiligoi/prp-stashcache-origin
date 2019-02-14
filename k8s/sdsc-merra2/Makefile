.PHONY: configmap configmap-old

all: configmap

configmap:
	-kubectl delete configmap stashcache-origin-merra2-config -n osg
	kubectl create configmap stashcache-origin-merra2-config -n osg --from-file=10-origin-site-local.cfg --from-file=public-origin-authfile

configmap-old:
	-kubectl delete configmap stashcache-origin-old-config-sdsc-merra2 -n osg
	kubectl create configmap stashcache-origin-old-config-sdsc-merra2 -n osg --from-file=10-origin-site-local.old.cfg --from-file=public-origin-authfile

