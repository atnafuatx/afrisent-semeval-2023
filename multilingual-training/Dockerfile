FROM pytorch/pytorch:1.8.0-cuda11.1-cudnn8-runtime

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir tensorboard && \
    pip install --no-cache-dir matplotlib && \
    pip install --no-cache-dir pytorch-lightning && \
    pip install --no-cache-dir torchvision && \
    pip install --no-cache-dir torch_optimizer && \
    pip install --no-cache-dir evaluate



COPY . /starter_kit   

WORKDIR /starter_kit

RUN ls

RUN pip install -r requirements.txt


WORKDIR /starter_kit
