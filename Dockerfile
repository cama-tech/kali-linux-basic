FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    python3-pip \
    nmap \
    wireshark \
    tshark \
    netcat-openbsd \
    openssh-client \
    curl \
    wget \
    && apt clean

RUN pip install --break-system-packages \
    scapy \
    paramiko \
    pycryptodome \
    requests

WORKDIR /root

CMD ["/bin/bash"]
