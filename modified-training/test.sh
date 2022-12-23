#!/bin/bash

# cp -r /home/azime/starter_kit/ .
# cd starter_kit




# TRAINING 
model_name="Davlan/afro-xlmr-small"

for i in 'am' 'dz' 'ha' 'ig' 'kr' 'ma' 'pcm' 'pt' 'sw' 'ts' 'twi' 'yo'
do
   python run_textclass.py --model_name_or_path $model_name --do_train --per_device_train_batch_size 32 --learning_rate 5e-5 --num_train_epochs 5.0 --max_seq_length 128 --data_dir SubtaskA/$i --output_dir $model_name-$i-sentiment  --save_steps -1 --overwrite_output_dir
done


# PREDICTION
for i in 'am' 'dz' 'ha' 'ig' 'kr' 'ma' 'pcm' 'pt' 'sw' 'ts' 'twi' 'yo'
do
       python run_textclass.py --model_name_or_path $model_name --do_predict --per_device_train_batch_size 32 --learning_rate 5e-5 --num_train_epochs 1 --max_seq_length 128 --data_dir SubtaskA/$i --output_dir $model_name-$i-sentiment --save_steps -1 --overwrite_output_dir
done


