FROM pytorch/pytorch:2.2.2-cuda12.1-cudnn8-runtime

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        git

RUN git clone -b feat-docker https://github.com/aisingapore/IndoMMLU.git indommlu
RUN pip install -r /workspace/indommlu/requirements.txt

ENTRYPOINT ["/workspace/indommlu/entrypoint.sh"]
