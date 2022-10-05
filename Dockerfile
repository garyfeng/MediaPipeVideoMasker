FROM python:3.9.14-buster

COPY requirements.txt /
RUN pip3 install -r requirements.txt 

COPY Masked-PiperPY.py /
COPY Input_Videos /
