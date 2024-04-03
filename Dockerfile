FROM snakemake/snakemake:stable
RUN mamba install -y -n snakemake python=3.11
COPY entrypoint.sh /entrypoint.sh
ENV CONDA_ENVS_PATH /github/workspace/.conda
ENTRYPOINT ["/entrypoint.sh"]
