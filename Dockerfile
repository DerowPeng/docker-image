FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel

#安装mmseg需要的系统库
RUN apt-get update && apt-get install -y \
    libgdal-dev \
    && rm -rf /var/lib/apt/lists/*
