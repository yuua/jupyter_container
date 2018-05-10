FROM continuumio/anaconda3:latest

USER root

WORKDIR /app

COPY . ./

RUN /opt/conda/bin/conda install jupyter -y --quiet
ENTRYPOINT ["/opt/conda/bin/jupyter","notebook", "--notebook-dir=/app/jupyter/notebooks","--ip='*'","--no-browser","--allow-root"]
