FROM ubuntu:latest
FROM python:3.8-slim-buster
RUN apt-get update 
RUN apt install -y python3-pip && apt install -y git
RUN pip --version
RUN git clone https://github.com/AbhishekRana23/PublicLeech.git
RUN cd PublicLeech
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY . .
RUN pip install virtualenv  

RUN virtualenv -p /usr/bin/python3 venv
RUN . ./venv/bin/activate
RUN pip install -r requirements.txt


CMD ["bash","start.sh"]
