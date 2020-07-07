FROM centos:7
MAINTAINER peedy2495

ADD assets /assets

RUN chmod -R 755 /assets
RUN /assets/setup.sh

CMD ["/assets/entrypoint.sh"]