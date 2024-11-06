FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel

#安装mmseg需要的系统库
RUN apt-get update && apt-get install -y \
    libgdal-dev \
    && rm -rf /var/lib/apt/lists/*
#安装miniconda
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    curl \
    && rm -rf /var/lib/apt/lists/*
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && bash Miniconda3-latest-Linux-x86_64.sh -b -f -p /opt/conda \
    && rm Miniconda3-latest-Linux-x86_64.sh

ENV PATH /opt/conda/bin:$PATH
