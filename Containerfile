FROM ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN pip install jupyter-book \
    pybids \
    pynv \
    dcm2niix \
    dcm2bids \
    heudiconv[all] \
    nipype \
    nltools \
    networkx \
    hypertools \
    datalad \
    fmriprep 

RUN mamba install -y fsleyes

USER $NB_USER
