FROM registry.access.redhat.com/ubi7/ubi-minimal

RUN microdnf install -y curl

RUN microdnf --enablerepo=rhel-7-server-rpms install shadow-utils

ARG USER_ID=30021
ARG USER_LOGIN=minio-adapter

RUN groupadd -g $USER_ID $USER_LOGIN && 
    adduser -u $USER_ID -g $USER_LOGIN $USER_LOGIN

USER $USER_LOGIN

CMD ["sleep", "600"]
