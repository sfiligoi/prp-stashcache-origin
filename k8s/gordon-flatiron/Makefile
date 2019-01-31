.PHONY: configmap

configmap:
	-kubectl delete configmap stashcache-origin-config-flatiron
	kubectl create configmap stashcache-origin-config-flatiron --from-file=10-origin-site-local.cfg --from-file=public-origin-authfile

