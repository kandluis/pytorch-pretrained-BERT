MODEL="bert-base-uncased"

python ./examples/run_squad.py \
  --bert_model $MODEL \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file ../squad/data/train-v2.0.json \
  --predict_file ../squad/data/dev-v2.0.json \
  --learning_rate 3e-5 \
  --num_train_epochs 5 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./save/$MODEL-5 \
  --train_batch_size 32 \
  --gradient_accumulation_steps 2 \
  --version_2_with_negative \
  --null_score_diff_threshold 0.0
