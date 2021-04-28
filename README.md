docker run -it --gpus all -v /home/mateo/Desktop/toqo-dataset:/dataset -v `pwd`:/code -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix -e NVIDIA_VISIBLE_DEVICES=0 -e CITIES='Zagreb' nn
