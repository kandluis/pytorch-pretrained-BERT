MODEL="bert-large-uncased"

python ./run_squad.py \
  --bert_model $MODEL \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file ../squad/data/train-v2.0.json \
  --predict_file ../squard/data/test-v2.0,json \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./save/$MODEL \
  --train_batch_size 24 \
  --gradient_accumulation_steps 4 \
  --version_2_with_negative \
  --null_score_diff_threshold 0.1