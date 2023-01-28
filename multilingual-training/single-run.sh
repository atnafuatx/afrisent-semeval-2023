

# Train 
python run_textclass.py --model_name_or_path "Davlan/afro-xlmr-small" --do_train  --do_eval --train_file SubtaskA/am_train.tsv --val_file SubtaskA/am_dev_new.tsv --pred_file SubtaskA/am_dev.tsv --per_device_train_batch_size 32 --learning_rate 5e-5 --num_train_epochs 3.0 --max_seq_length 128 --data_dir SubtaskA/am --output_dir Davlan/afro-xlmr-small-am-sentiment  --save_steps -1 --overwrite_output_dir --multilingual --tagged
       
# predict
python run_predict.py --model_path Davlan/afro-xlmr-small-am-sentiment --file_name SubtaskA/am_dev.tsv --text_column 'tweet' --lang_code am

