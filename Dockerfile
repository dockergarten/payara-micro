FROM payara/micro
LABEL maintainer MAINTAINER "Marcus Fihlon, fihlon.ch"

USER root
RUN apk --no-cache add curl && rm -rf /var/cache/apk/*
USER payara

ENV JAVA_MEMORY 256m
ENV DEPLOYMENT_DIR /opt/payara/deployments
ENTRYPOINT java -Xmx${JAVA_MEMORY} -jar /opt/payara/payara-micro.jar --noCluster true --deploymentDir ${DEPLOYMENT_DIR}

