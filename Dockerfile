FROM registry.access.redhat.com/ubi7/ubi-minimal

RUN microdnf install -y curl

RUN microdnf --enablerepo=rhel-7-server-rpms install shadow-utils


CMD ["sleep", "600"]
