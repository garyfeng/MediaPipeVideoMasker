# MediaPipe Video Masker  <br />
This is a project demonstrating how to use Google's MediaPipe to a) mask facial and other personal identiable information (PII) in a video and b) export estimated facial, hand, and body pose features. This work is based on 

- [Google MediaPipe](https://google.github.io/mediapipe/)
- [Masked-Piper](https://github.com/WimPouw/TowardsMultimodalOpenScience)
- blogs such as https://pysource.com/2021/05/21/blur-faces-in-real-time-with-opencv-mediapipe-and-python/ and https://sefiks.com/2022/01/14/deep-face-detection-with-mediapipe/ 

 <br />

# Installation and running

Recommended to test this with `docker`. This demo automatically processes all the videos in the `/Input_Videos` directory in the docker container and saves the output video and feature data in output directories. It prints out some stats as it processes. 

```sh
docker build -t mediapipevideomasker .
# run with the default examples
docker run --rm -it mediapipevideomasker
# if you have video files in the "./input" folder on your host machine 
# and you want the output to be in "./output" 
# Note: for Windows machine only. Replace %cd% with ${PWD} or $(PWD) for Linux
docker run --rm -it -v %cd%/input:/Input_Videos -v %cd%/output:/Output_MaskedVideos -v %cd%/output:/Output_TimeSeries mediapipevideomasker

```

On my 5-year-old PC the docker runs about 2X real time, depending on the video size and the masking options. 

# Options
Look into the `config` dict in `mpvideomasker.py`. You can control 
- whether to mask the face or the whole body
- whether to show pose and facial features

To make changes, you will have to modify the `mpvideomasker.py` file at the moment, until we implement a proper way to pass options via environment variables or other means. 