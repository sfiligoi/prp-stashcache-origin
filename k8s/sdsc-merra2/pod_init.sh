#!/bin/bash

# Point reverse-DNS to the service DNS name, to make xrootd happy
cp /etc/hosts /etc/hosts.1 && (cat /etc/hosts.1 | sed 's/stashcache-origin-merra2.*/stashcache-origin-merra2.nautilus.optiputer.net/g' >/etc/hosts)

export HOSTNAME=stashcache-origin-merra2.nautilus.optiputer.net
