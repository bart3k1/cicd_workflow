FROM ubuntu:20.10


RUN apt-get update && \
    apt-get install --no-install-recommends python3-pip=20.0.2-5ubuntu1 -y && \
    pip3 install --no-cache-dir falcon==3.0.1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /myapp


COPY sample.py /myapp/sample.py
WORKDIR /myapp
EXPOSE 8000

CMD ["python3", "sample.py"]

