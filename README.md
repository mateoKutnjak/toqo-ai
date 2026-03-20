# Landmark Classification with EfficientNet

> Image classification model trained on a custom dataset of city
> landmarks using EfficientNet.

This project trains a deep learning model to classify images of **city
landmarks** into predefined categories.\
The model outputs a **predicted class with confidence score** for each
input image.

------------------------------------------------------------------------

## Highlights

-   Trained **EfficientNet (PyTorch)** on a custom dataset
-   Multi-class classification of city landmarks
-   GPU training with Docker support
-   Training, evaluation, and TensorBoard logging included

------------------------------------------------------------------------

## Overview

The goal of this project is to build an image classifier capable of
recognizing **landmarks within a specific city** (e.g. Zagreb).

The model learns visual features from labeled images and predicts the
correct landmark category.

------------------------------------------------------------------------

## Model

-   Architecture: **EfficientNet-B0**
-   Pretrained weights: ImageNet
-   Fine-tuned on custom dataset
-   Output: class probabilities (softmax)

------------------------------------------------------------------------

## Dataset

-   Custom dataset of **city landmarks**
-   Example: *Zagreb landmarks*
-   Organized into **N classes (e.g. 30 landmarks)**
-   Images grouped by class folders

------------------------------------------------------------------------

## What This Project Demonstrates

-   Training deep learning models on **custom datasets**
-   Fine-tuning pretrained architectures
-   Managing training workflows (train / eval / resume)
-   Using Docker for reproducible ML environments
-   Monitoring experiments with TensorBoard

------------------------------------------------------------------------

## For Developers

### Docker Run

``` bash
docker run -it --gpus all \
-v /home/mateo/Desktop/toqo-dataset:/dataset \
-v $(pwd):/code \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix/:/tmp/.X11-unix \
-e NVIDIA_VISIBLE_DEVICES=0 \
-e CITIES='Zagreb' \
-p 6006:6006 nn
```

------------------------------------------------------------------------

### Train Model

``` bash
python3 main.py /dataset/ \
--dataset_name zagreb \
--num-classes 30 \
--gpu 0 \
--lr 0.005 \
--arch efficientnet-b0 \
--batch-size 4 \
--pretrained
```

------------------------------------------------------------------------

### Evaluate Model

``` bash
python3 main.py /dataset/ \
--dataset_name zagreb \
--num-classes 30 \
--gpu 0 \
--lr 0.005 \
--arch efficientnet-b0 \
--batch-size 4 \
--pretrained \
--test \
--resume /code/models/zagreb/model_best.pth.tar
```

------------------------------------------------------------------------

### TensorBoard

``` bash
tensorboard --logdir=runs --host 0.0.0.0
```

Open in browser:

http://localhost:6006

------------------------------------------------------------------------

## Tech Stack

-   Python
-   PyTorch
-   EfficientNet
-   Docker
-   TensorBoard

------------------------------------------------------------------------

## Notes

This is a focused project utilizing **image classification for landmark
recognition**, with emphasis on training pipeline and model performance
used in production deployment as backend service.
