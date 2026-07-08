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
    pybids
   
RUN python3 -m pip install --no-cache-dir \ 
    hypertools \
    fmriprep \
    pynv

# Force install nltools without letting its outdated constraints break Python 3.13
RUN python3 -m pip install --no-cache-dir --no-deps nltools

USER $NB_USER
