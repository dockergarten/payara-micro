FROM payara/micro
LABEL maintainer MAINTAINER "Marcus Fihlon, fihlon.ch"
ENV DEPLOYMENT_DIR /opt/payara/deployments
ENTRYPOINT java -jar /opt/payara/payara-micro.jar --noCluster true --deploymentDir ${DEPLOYMENT_DIR}

