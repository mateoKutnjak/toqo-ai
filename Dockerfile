FROM nvidia/cuda:11.3.0-cudnn8-devel-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive
# ARG PYTHON_VERSION=3.5
# ARG WITH_TORCHVISION=1

RUN apt update && apt install -y \
        software-properties-common \
        git \
        curl \
        nano \
        python3-pip

RUN apt-get update && apt-get install -y \
        python3-pip \
        libsm6 \
        libxext6 \
        libxrender-dev \
        libxi6 \
        libgconf-2-4 \
        python3-tk \
        zsh \
        wget

RUN pip3 install --upgrade pip

RUN pip3 install torch==1.8.1+cu111 torchvision==0.9.1+cu111 torchaudio==0.8.1 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip3 install \
        numpy \
        matplotlib==2.1.0 \
        termcolor \
	yacs \
        polyaxon-client \
	imageio \
        cython \
        opencv-python \
        scikit-image==0.14.2 \
        tqdm \
        tensorboard \
        efficientnet-pytorch

RUN pip3 install \
	pycocotools

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

WORKDIR /code

CMD ["zsh"]
