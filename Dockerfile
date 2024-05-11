FROM ubuntu:22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN apt-get install -y vim build-essential git cmake net-tools gdb clang
RUN apt install ninja-build -y

WORKDIR /work

ENV SHELL /bin/bash
ARG USERNAME=vadmin
ARG USER_UID=1000
ARG USER_GID=$USER_UID
# Create the user
ENV IS_GPU_ENABLED=1

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

RUN groupmod --gid $USER_GID $USERNAME \
    && usermod --uid $USER_UID --gid $USER_GID $USERNAME \
    && chown -R $USER_UID:$USER_GID /home/$USERNAME
