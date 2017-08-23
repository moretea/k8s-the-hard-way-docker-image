FROM google/cloud-sdk:latest
RUN curl -s --fail https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 > /usr/local/bin/cfssl && \
    chmod +x /usr/local/bin/cfssl && \
    curl -s --fail https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 > /usr/local/bin/cfssljson && \
    chmod +x /usr/local/bin/cfssljson
RUN adduser k8sthw --disabled-password --gecos "k8sthw"
USER k8sthw
WORKDIR /home/k8sthw
