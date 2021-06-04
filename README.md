docker run -it --gpus all -v /home/mateo/Desktop/toqo-dataset:/dataset -v `pwd`:/code -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix -e NVIDIA_VISIBLE_DEVICES=0 -e CITIES='Zagreb' nn

python3 main.py /dataset/ --dataset_name zagreb --num-classes 30 --gpu 0 --lr 0.005 --arch efficientnet-b0 --batch-size 4 --pretrained
python3 main.py /dataset/ --dataset_name zagreb --num-classes 30 --gpu 0 --lr 0.005 --arch efficientnet-b0 --batch-size 4 --pretrained --test --resume /code/model_best.pth.tar

tensorboard --logdir=runs --host 0.0.0.0
