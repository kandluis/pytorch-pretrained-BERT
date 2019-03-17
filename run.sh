MODEL="bert-base-uncased"

python ./examples/run_squad.py \
  --bert_model $MODEL \
  --do_predict \
  --do_lower_case \
  --predict_file ../squad/data/test-v2.0.json \
  --learning_rate 3e-5 \
  --num_train_epochs 6 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./save/$MODEL-5 \
  --train_batch_size 48 \
  --gradient_accumulation_steps 2 \
  --version_2_with_negative \
  --null_score_diff_threshold 0.0
