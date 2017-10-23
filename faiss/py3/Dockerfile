FROM bluelens/ubuntu-16.04:py3

MAINTAINER bluehackmaster <master@bluehack.net>

RUN apt-get install -y libopenblas-dev python-numpy python-dev swig git python-pip wget

RUN pip install matplotlib

COPY . /opt/app

WORKDIR /opt/app/faiss

ENV BLASLDFLAGS /usr/lib/libopenblas.so.0

RUN mv example_makefiles/makefile.inc.Linux ./makefile.inc

RUN make tests/test_blas -j $(nproc) && \
    make -j $(nproc) && \
    make tests/demo_sift1M -j $(nproc)

RUN make py

ENV PYTHONPATH /opt/app/faiss