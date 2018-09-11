FROM java:openjdk-8-jdk

MAINTAINER denrl@hotmail.com

ADD ./mule-ee-distribution-standalone-4.1.2.zip /root
RUN cd /opt && unzip /root/mule-ee-distribution-standalone-4.1.2.zip -d /opt && rm /root/mule-ee-distribution-standalone-4.1.2.zip && ln -s /opt/mule-enterprise-standalone-4.1.2 /opt/mule

# Define environment variables.
ENV MULE_HOME /opt/mule

# add your LICENSE to root
ADD ./license.lic /opt/mule/bin
RUN /opt/mule/bin/mule -installLicense /opt/mule/bin/license.lic

# REPLACE with your registration string
RUN /opt/mule/bin/amc_setup -H # 7c07bc1b-549a-40aa-bc82-02d33af98795---109087 tel5

# Define mount points.
VOLUME ["/opt/mule/logs", "/opt/mule/conf", "/opt/mule/apps", "/opt/mule/domains"]

# Define working directory.
WORKDIR /opt/mule

CMD [ "/opt/mule/bin/mule" ]

# Default http port
EXPOSE 8081
