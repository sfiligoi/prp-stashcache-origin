.PHONY: configmap

configmap:
	-kubectl delete configmap stashcache-origin-config-sdsc-merra2 -n osg
	kubectl create configmap stashcache-origin-config-sdsc-merra2 -n osg --from-file=10-origin-site-local.cfg --from-file=public-origin-authfile

