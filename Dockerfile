FROM snakemake/snakemake:latest
RUN /usr/local/bin/_dockerfile_shell.sh micromamba install "python==3.11.4"
COPY entrypoint.sh /entrypoint.sh
ENV CONDA_ENVS_PATH /github/workspace/.conda
ENTRYPOINT ["/entrypoint.sh"]
