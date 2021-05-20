export EXP_NAME=WN18RR_bert-large-cased
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export EXP_ROOT=exp_root
export MODEL_CACHE_DIR=cache

mkdir -p ${EXP_ROOT}/cache_${EXP_NAME}
python run_link_prediction.py \
--do_train \
--do_eval \
--do_predict \
--data_dir ./data/WN18RR \
--per_device_train_batch_size 16 \
--per_device_eval_batch_size 32 \
--data_cache_dir ${EXP_ROOT}/cache_${EXP_NAME} \
--model_cache_dir ${MODEL_CACHE_DIR} \
--model_name_or_path bert-large-cased \
--pooling_model \
--num_neg 5 \
--margin 7 \
--no_mid \
--max_seq_length 192 \
--learning_rate 3e-5 \
--num_train_epochs 6 \
--output_dir ${EXP_ROOT}/out_${EXP_NAME} \
--gradient_accumulation_steps 1 \
--save_total_limit 6 \
--save_steps 10855 \
--warmup_steps 6000 \
--weight_decay 0.01 \
--text_loss_weight 0.0 \
--test_ratio 1. \
--overwrite_output_dir
