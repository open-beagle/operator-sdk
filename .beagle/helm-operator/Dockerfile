ARG BASE

FROM ${BASE}

ARG AUTHOR
ARG VERSION

LABEL maintainer=${AUTHOR} version=${VERSION}

ARG TARGETOS
ARG TARGETARCH

ENV HOME=/opt/helm \
  USER_NAME=helm \
  USER_UID=1001

RUN echo "${USER_NAME}:x:${USER_UID}:0:${USER_NAME} user:${HOME}:/sbin/nologin" >>/etc/passwd

WORKDIR ${HOME}
USER ${USER_UID}

COPY ./build/helm-operator-$TARGETOS-$TARGETARCH /usr/local/bin/helm-operator

ENTRYPOINT ["/usr/local/bin/helm-operator", "run", "--watches-file=./watches.yaml"]
