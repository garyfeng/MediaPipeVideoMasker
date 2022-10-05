FROM python:3.9.14-buster

COPY requirements.txt /
RUN pip3 install -r requirements.txt 

# Fixing libs
RUN apt-get update -y && apt-get install -y libgl-dev

# Prep for the app
COPY mpvideomasker.py /
COPY LICENSE /
ADD Input_Videos /Input_Videos
ADD Output_MaskedVideos /Output_MaskedVideos
ADD Output_TimeSeries /Output_TimeSeries

# run the default command
CMD [ "python", "mpvideomasker.py"]