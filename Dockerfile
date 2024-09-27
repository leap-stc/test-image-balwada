# Inherit from an upstream image
FROM quay.io/pangeo/pangeo-notebook:2024.08.18

COPY environment.yml /tmp/environment.yml

RUN echo "CONDA DIR: $CONDA_DIR"
RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

RUN echo "DEBUG -----------------------"
RUN echo "LIST BASE ENV"
RUN conda list | grep ssh
RUN echo "LIST NOTEBOOK ENV"
RUN conda list -n notebook | grep ssh
RUN echo "DEBUG -----------------------"

RUN ls
