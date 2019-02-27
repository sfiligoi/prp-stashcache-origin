.PHONY: configmap

configmap:
	-kubectl delete configmap stashcache-origin-config-flatiron
	kubectl create configmap stashcache-origin-config-flatiron \
            --from-file=11-local.cfg --from-file=public-origin-authfile \
            --from-file=xcache_pod_init.sh

