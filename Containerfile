FROM registry.cloud.college.ucsb.edu/ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN conda install -y \
    datalad\
    dcm2bids\
    dcm2niix\
    fsleyes\
    heudiconv\
    jupyter-book\
    networkx\
    nipype\
    pybids\
    pynv
   
RUN pip install -y\
    nltools \
    hypertools \
    fmriprep

USER $NB_USER
