FROM centos

RUN cd /etc/yum.repos.d/ && \
    sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*


#RUN yum -y update && yum clean all && yum -y install openssh-server

RUN yum -y  install openssh-server

######### centos 07 ##########

#RUN useradd remote_user && \
#    echo "1234" | passwd remote_user  --stdin && \ # Passwd command is deprecated on centos:8
#    mkdir /home/remote_user/.ssh && \
#    chmod 700 /home/remote_user/.ssh

######## centos 08 #########

RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub  /home/remote_user/.ssh/authorized.keys

RUN chown remote_user:remote_user  /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized.keys

#RUN   /usr/sbin/sshd-keygen

CMD /usr/sbin/sshd -D 

