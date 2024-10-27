# # This is run with normalization, but no 

MODEL=attnplain
DEVICE=cuda:0
SEED=1
SAMPLE=10
JUMP=1
MEMORY=100
OPT=SGD

DATASET=citeseer
BATCH=6
for SEED in 1 2 3
do
    python lifelong_data.py --save loads/${MODEL}_data_${DATASET}_${OPT}_${MEMORY}_J${JUMP}_${OPT}_${SEED}.model \
        --eval ./Exp_lifelongdata/${MODEL}/${MODEL}_data_${DATASET}_J${JUMP}_${OPT} --data-root ./data \
        --dataset ${DATASET} --lr 0.01 --batch-size ${BATCH} --iteration 5 --memory ${MEMORY} --device $DEVICE \
        --sample-rate ${SAMPLE} --seed $SEED --model ${MODEL} --jump ${JUMP} --optm ${OPT} --hidden 10 10 --drop 0 0
done
...
BATCH=10
DATASET=pubmed
for SEED in 1 2 3
do
    python lifelong_data.py --save loads/${MODEL}_data_${DATASET}_${OPT}_${MEMORY}_J${JUMP}_${OPT}_${SEED}.model \
        --eval ./Exp_lifelongdata/${MODEL}/${MODEL}_data_${DATASET}_J${JUMP}_${OPT} --data-root ./data\
        --dataset ${DATASET} --lr 0.01 --batch-size ${BATCH} --iteration 5 --memory ${MEMORY} --device $DEVICE \
        --sample-rate ${SAMPLE} --seed $SEED --model ${MODEL} --jump ${JUMP} --optm ${OPT} --hidden 10 10 --drop 0 0
done


DATASET=cora
for SEED in 1 2 3
do
    python lifelong_data.py --save loads/${MODEL}_data_${DATASET}_${OPT}_${MEMORY}_J${JUMP}_${OPT}_${SEED}.model \
        --eval ./Exp_lifelongdata/${MODEL}/${MODEL}_data_${DATASET}_J${JUMP}_${OPT} --data-root ./data \
        --dataset ${DATASET} --lr 0.01 --batch-size ${BATCH} --iteration 5 --memory ${MEMORY} --device $DEVICE \
        --sample-rate ${SAMPLE} --seed $SEED --model ${MODEL} --jump ${JUMP} --optm ${OPT} --hidden 10 10 --drop 0 0
done
...
