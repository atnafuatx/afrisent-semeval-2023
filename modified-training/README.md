# Simple Training over all alnguages in Subtask A


<a target="_blank" href="https://colab.research.google.com/drive/1gRWeCr95cNs2Dnk1mdshG5ttJsdvgYhT?usp=sharing">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>





```
git clone https://github.com/IsraelAbebe/afrisent-semeval-2023
cd afrisent-semeval-2023/modified-training
bash test.sh
```





# If you want to train one by one

> the problem with the original script is simple path problem and since we dont have real val and test data i just used dev like test so it can predict something for us 




# TRAIN
`
python run_textclass.py --model_name_or_path Davlan/afro-xlmr-small --do_train --per_device_train_batch_size 32 --learning_rate 5e-5 --num_train_epochs 5.0 --max_seq_length 128 --data_dir SubtaskA/am --output_dir Davlan/afro-xlmr-small-am-sentiment  --save_steps -1 --overwrite_output_dir
`

# PREDICT (ON *_dev.tsv for now )
`
python run_textclass.py --model_name_or_path avlan/afro-xlmr-small --do_predict --per_device_train_batch_size 32 --learning_rate 5e-5 --num_train_epochs 1 --max_seq_length 128 --data_dir SubtaskA/am --output_dir Davlan/afro-xlmr-small-am-sentiment --save_steps -1 --overwrite_output_dir
`
