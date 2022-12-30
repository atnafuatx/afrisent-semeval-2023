
model_name="Davlan/afro-xlmr-small"
language='am'

# Train 
python run_textclass.py --model_name_or_path $model_name --do_train  --do_eval  --per_device_train_batch_size 32 --learning_rate 5e-5 --num_train_epochs 3.0 --max_seq_length 128 --data_dir SubtaskA/$model_name --output_dir $j-$model_name-sentiment  --save_steps -1 --overwrite_output_dir
       
# predict
python run_predict.py --model_path $j-$i-sentiment --file_name SubtaskA/${i}_dev.tsv --text_column 'tweet' --lang_code $i

