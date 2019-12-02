FROM python:3.7-slim-buster

WORKDIR /app

COPY . /app
RUN apt-get -y update  && apt-get install -y \
  python3-dev \
  apt-utils \
  python-dev \
  build-essential \
&& rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools \
    && pip install cython \
    && pip install numpy \
    && pip install matplotlib \
    && pip install pystan \
    && pip install fbprophet

# Following CMD keeps the container running
# Modify CMD to run the app that you require. 
CMD tail -f /dev/null &
