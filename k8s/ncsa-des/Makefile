.PHONY: configmap

configmap:
	-kubectl delete configmap stashcache-origin-config-ncsa-des -n osg
	kubectl create configmap stashcache-origin-config-ncsa-des -n osg \
           --from-file=10-origin-site-local.cfg --from-file=10-common-site-local.cfg \
           --from-file=public-origin-authfile

