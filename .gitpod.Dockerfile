FROM gitpod/workspace-full-vnc

USER gitpod

RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# RUN sudo rm /etc/apt/sources.list.d/ungoogled_chromium.list

RUN sudo apt-get -q update && \
    sudo apt-get -yq upgrade && \
    sudo apt-get -yq install qemu-system-x86 qemu-utils gdb-mingw-w64 && \
    sudo rm -rf /var/lib/apt/lists/*
