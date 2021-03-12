#!/bin/bash
for n_est in 50 100 150 200
do 
    for min_split in 8 32
    do
        dvc exp run -S train.n_est=${n_est} -S train.min_split=${min_split} --queue
    done
done

