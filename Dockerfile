FROM ubuntu:22.04

WORKDIR /usr/bin
# Install base tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    gpg

# Install Bazel
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg && \
    mv bazel.gpg /etc/apt/trusted.gpg.d/ && \
    echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && \
    apt-get update && apt-get install -y \
    bazel
    
RUN apt install bazel-4.2.0 

WORKDIR /opentelemetry-cpp/
COPY opentelemetry-cpp /opentelemetry-cpp
COPY run.sh /
RUN chmod +x /run.sh

RUN [ "bazel", "build", "//examples/metrics_simple:metrics_ostream_example" ]

ENTRYPOINT [ "/run.sh" ]

#Debugging path
# ENTRYPOINT [ "tail", "-f", "/dev/null" ] 