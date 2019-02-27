#!/bin/bash

# lustre needs a weel known UID, and what comes with the image does not work
# The following has been tested to work
usermod -u 512844 xrootd

# update the ownership of existing areas
chown -R xrootd /var/spool/xrootd
chown -R xrootd /var/run/xrootd
chown -R xrootd /var/log/xrootd
