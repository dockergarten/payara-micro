FROM payara/micro
MAINTAINER Marcus Fihlon, fihlon.ch
ENV DEPLOYMENT_DIR /opt/payara/deployments
ENTRYPOINT java -jar /opt/payara/payara-micro.jar --deploymentDir ${DEPLOYMENT_DIR}

