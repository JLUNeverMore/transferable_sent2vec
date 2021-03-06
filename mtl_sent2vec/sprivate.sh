#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=$1 python -W ignore fully_shared/main.py \
    --cuda \
    --task snli quora multinli \
    --data ../data/ \
    --adversarial \
    --max_example -1 \
    --classifier 0 \
    --rnn_type LSTM \
    --bidirection \
    --beta 0.05 \
    --gamma 0.01 \
    --optimizer sgd,lr=0.1 \
    --lrshrink 5 \
    --minlr 1e-5 \
    --emsize 300 \
    --nhid 2048 \
    --nlayers 1 \
    --fc_dim 512 \
    --lr_decay 0.99 \
    --max_norm 5.0 \
    --batch_size 64 \
    --epochs 50 \
    --dropout 0.2 \
    --dropout_fc 0.2 \
    --print_every 20 \
    --save_path ./iclr_output/adv_3tasks/ \
    --word_vectors_directory ../data/glove/ \
    --word_vectors_file glove.840B.300d.txt \
