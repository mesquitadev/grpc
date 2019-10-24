FROM python:3.7

WORKDIR /app
RUN apt update && apt upgrade -y

COPY . /app

RUN printenv

RUN apt-get update && apt -y upgrade
RUN apt-get install -y python3
RUN apt install -y python3-pip
RUN python3 -m pip install opencv-python grpcio grpcio-tools scikit-video
RUN apt install -y libsm6 libxext6
RUN apt install -y openalpr openalpr-daemon openalpr-utils libopenalpr-dev
RUN apt-get install -y python3-openalpr
RUN python3 -m pip install requests


EXPOSE 50051

CMD python Server.py
