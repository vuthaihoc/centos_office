FROM centos:7

RUN yum update -y && yum install -y epel-release && yum update -y && \
    yum install libreoffice -y && \
    yum groupinstall -y "fonts" && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY ./jodconverter_rest.jar /jodconverter/jodconverter_rest.jar

COPY ./fonts/msmath /usr/share/fonts/msmath/
COPY ./fonts/VNI /usr/share/fonts/VNI/
COPY ./fonts/UNICODE /usr/share/fonts/UNICODE/
COPY ./fonts/MS_W /usr/share/fonts/MS_W/

RUN fc-cache -fv && fc-list




