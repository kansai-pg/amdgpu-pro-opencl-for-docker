FROM ubuntu:22.04

ENV TERM=xterm

RUN apt-get update && apt-get install wget -y && wget https://repo.radeon.com/amdgpu-install/22.40.3/ubuntu/jammy/amdgpu-install_5.4.50403-1_all.deb \
&& dpkg -i amdgpu-install_5.4.50403-1_all.deb && rm amdgpu-install_5.4.50403-1_all.deb
#https://amdgpu-install.readthedocs.io/en/latest/install-script.html
RUN /usr/bin/amdgpu-install --usecase=opencl --opencl=legacy -y --accept-eula
