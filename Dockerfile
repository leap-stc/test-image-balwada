# Inherit from an upstream image
FROM quay.io/pangeo/pangeo-notebook:2024.08.18

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${NB_PYTHON_PREFIX} --file /tmp/environment.yml

RUN conda list -n notebook | grep ssh

RUN ls
