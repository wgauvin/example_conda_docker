FROM continuumio/miniconda3

WORKDIR /root

COPY requirements.txt requirements.txt
RUN . /opt/conda/etc/profile.d/conda.sh && \
    conda activate base && \
    pip install -r requirements.txt

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "--version" ]
