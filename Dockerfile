FROM centos:centos7

LABEL maintainer OSG Software <help@opensciencegrid.org>

WORKDIR /var/spool/xrootd

RUN yum -y install http://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm \
                   epel-release \
                   yum-plugin-priorities && \
    yum -y install xcache --enablerepo=osg-minefield && \
    yum -y install supervisor cronie && \
    yum -y install stash-origin --enablerepo=osg-development \
    osg-ca-generator && \
    yum clean all --enablerepo=* && rm -rf /var/cache/yum/

ADD cron.d/* /etc/cron.d/
ADD sbin/* /usr/local/sbin/
ADD supervisord.conf /etc/
ADD supervisord.d/* /etc/supervisord.d/

# dev
RUN osg-ca-generator --host
RUN cp /etc/grid-security/{hostcert.pem,xrd/xrdcert.pem} && \
    cp /etc/grid-security/{hostkey.pem,xrd/xrdkey.pem}

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

