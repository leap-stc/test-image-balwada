# Inherit from an upstream image
FROM quay.io/pangeo/pangeo-notebook:2024.08.18

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --name ${CONDA_ENV} --file /tmp/environment.yml

RUN ls
