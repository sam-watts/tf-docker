FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04

# Install desired system packages with specific version call-outs for python
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    libblas-dev \
    libffi-dev \
    liblapack-dev \
    libxslt-dev \
    python3.7 \
    python3.7-dev \
    python3-pip \
    python3-setuptools \
    wget 

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
RUN python -m pip install --upgrade pip && python -m pip install wheel
RUN apt-get -y autoremove

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
