#!/bin/bash


for j in  'Davlan/afro-xlmr-small'  'Davlan/afro-xlmr-base' 'Davlan/afro-xlmr-large' 'setu4993/LaBSE' 'castorini/afriberta_large' 'cardiffnlp/twitter-xlm-roberta-base-sentiment' 'jhu-clsp/bernice' 'SI2M-Lab/DarijaBERT'
do
 
    for i in 'am' 'dz' 'ha' 'ig' 'kr' 'ma' 'pcm' 'pt' 'sw' 'ts' 'twi' 'yo'
    do
      # Train 
       python run_textclass.py --model_name_or_path $j --do_train  --do_eval --do_predict --train_file SubtaskA/${i}_train.tsv --val_file SubtaskA/${i}_dev_new.tsv --pred_file SubtaskA/${i}_dev.tsv --per_device_train_batch_size 32 --learning_rate 5e-5 --num_train_epochs 3.0 --max_seq_length 128 --data_dir SubtaskA/$i --output_dir $j-$i-sentiment  --save_steps -1 --overwrite_output_dir
       
      # predict
       python run_predict.py --model_path $j-$i-sentiment --file_name SubtaskA/${i}_dev.tsv --text_column 'tweet' --lang_code $i
    done
done



