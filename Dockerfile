FROM python:3.9.14-buster

COPY requirements.txt /
RUN pip3 install -r requirements.txt 

COPY Masked-PiperPY.py /
COPY LICENSE /
ADD Input_Videos /Input_Videos
ADD Output_MaskedVideos /Output_MaskedVideos
ADD Output_TimeSeries /Output_TimeSeries

# Fixing libs
RUN apt-get update -y && apt-get install -y libgl-dev && pip3 install --upgrade protobuf==3.20.0