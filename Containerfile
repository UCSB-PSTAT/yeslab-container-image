FROM ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

# Until 0.6+ is released.
# Ref. https://github.com/cosanlab/nltools/issues/451
RUN pip install git+https://github.com/cosanlab/nltools

RUN pip install jupyter-book \
    pybids \
    pynv \
    dcm2niix \
    dcm2bids \
    heudiconv[all] \
    nipype \
    networkx \
    hypertools \
    datalad \
    fmriprep 

RUN mamba install -y fsleyes

USER $NB_USER
