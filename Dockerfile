FROM jenkins/jenkins:2.423-slim-jdk21-preview

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY plugins.txt /usr/share/jenkins/ref/

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

USER root
