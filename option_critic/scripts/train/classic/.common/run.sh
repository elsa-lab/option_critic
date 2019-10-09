#!/bin/bash

# 1. Run training in a Tmux detached session
# 2. Zip the experimental results
tmux new -d -s "$TMUX_SESSION_NAME" \
    "python train_q.py \
    --rom=$ENV_ID \
    --epochs=$EPOCHS \
    --num-options=$NUM_OPTIONS \
    --seed=$SEED \
    --folder-name=$MODEL_DIR \
    > >(tee \"$LOG_STDOUT_PATH\") \
    2> >(tee \"$LOG_STDERR_PATH\" >&2) && \
    rm -f $ZIP_PATH \
    zip -r \"$ZIP_PATH\" \"$LOG_DIR\" \"$MODEL_DIR\""