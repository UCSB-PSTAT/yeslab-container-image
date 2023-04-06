FROM ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

#RUN mamba install -y astropy <libraries>

RUN pip install attrdict \
    jupyter-book \
    pybids \
    pynv \
    nipype \
    nltools \
    networkx \
    hypertools \
    datalad \
    fmriprep \
    fsleyes

USER $NB_USER
