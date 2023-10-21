# https://github.com/neurobin/shc :: NOT STRAIGHTFORWARD W/ wget .../4.0.3.tar.gz OR git clone ...neurobin/shc.git
# TODO: Execute it as C binary in other OS: centos, Windows, REHL

FROM ubuntu:20.04
RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:neurobin/ppa && \
    apt-get install -y gcc shc && rm -rf /var/lib/apt/lists/*
ARG SCRIPT
COPY $SCRIPT .
# RUN ./$SCRIPT # check in input script running
ARG BINARY_OUTPUT
RUN shc -f ./$SCRIPT -m "" -r -o $BINARY_OUTPUT
# RUN ./$BINARY_OUTPUT # check in output script running
CMD ["/bin/bash"]

#docker build -f shc.Dockerfile -t test-shc .
#docker run --rm -di --name test-shc test-shc
#docker cp test-shc:/binary .

