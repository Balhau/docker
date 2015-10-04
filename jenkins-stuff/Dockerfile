FROM jenkins

MAINTAINER ContainerSolutions

USER root
#TODO the group ID for docker group on my Ubuntu is 998, therefore I can only run docker commands if I have same group id inside.
# Otherwise the socket file is not accessible.
#To find the group run the command:
# getent group docker
RUN groupadd -g 998 docker && usermod -a -G docker jenkins
USER jenkins
