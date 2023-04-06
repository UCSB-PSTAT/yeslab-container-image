FROM ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN pip install jupyter-book \
    pybids \
    pynv \
    nipype \
    nltools \
    networkx \
    hypertools \
    datalad \
    fmriprep 
    #fsleyes

RUN mamba install -y fsleyes

USER $NB_USER
