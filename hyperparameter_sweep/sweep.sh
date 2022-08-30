#!/bin/bash
export OC_DISABLE_DOT_ACCESS_WARNING=1

mmf_run config="/content/mmf/mmf/projects/hateful_memes/configs/unimodal/bert.yaml" \
         model=$1 \
         dataset=hateful_memes \
         run_type=train_val \
         training.tensorboard=True \
         training.max_updates=50 \
         training.checkpoint_interval=50 \
         training.log_interval=50 \
         training.max_epochs=2\
         dataset_config.hateful_memes.annotations.train[0]=$2 \
         dataset_config.hateful_memes.annotations.val[0]=$3 \
         dataset_config.hateful_memes.annotations.test[0]=$4 \
         env.save_dir=$5 \
         env.tensorboard_logdir=$6
