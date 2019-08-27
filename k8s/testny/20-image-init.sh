#!/bin/bash

# Point reverse-DNS to the service DNS name, to make xrootd happy
cp /etc/hosts /etc/hosts.1 && (cat /etc/hosts.1 | sed 's/stashcache-origin-testny.*/osg.newy32aoa.nrp.internet2.edu/g' >/etc/hosts)

export HOSTNAME=osg.newy32aoa.nrp.internet2.edu
