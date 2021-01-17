FROM consol/centos-xfce-vnc:1.4.0
USER root
RUN yum -y update
RUN yum -y install java-11-openjdk-devel java-11-openjdk unzip
RUN mkdir /opt/AS4
WORKDIR /opt/AS4
ADD entrypoint.sh /opt
#RUN wget https://sourceforge.net/projects/mendelson-as4/files/install_mendelson_opensource_as4_1.0b29.zip/download && unzip download
#RUN chmod +x /opt/AS4/as4_start.sh
ENV VNC_PW=gns
EXPOSE 8080
EXPOSE 8443
EXPOSE 6901
EXPOSE 1248
CMD /opt/entrypoint.sh