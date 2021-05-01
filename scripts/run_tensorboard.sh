#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

tensorboard --logdir=${SCRIPT_DIR}/../runs --host 0.0.0.0 --port 6006
