FROM centos:latest

RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install certbot python36 python36-pip python36-devel

RUN pip3 install --upgrade pip

COPY rdcm /opt/rdcm

ENTRYPOINT [ "/opt/rdcm/rdcm.py" ]