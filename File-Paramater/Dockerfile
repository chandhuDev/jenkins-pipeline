FROM centos:centos8

COPY commands.sh /tmp/commands.sh

RUN chmod +x /tmp/commands.sh
RUN /tmp/commands.sh

RUN cat /var/lib/jenkins/secrets/initialAdminPassword

EXPOSE 8080

CMD ["systemctl", "start", "jenkins"]