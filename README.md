# LanE

The source code repo for paper *Natural Language Embedding for Knowledge Graph Completion*.

## Setup Dataset and Dependencies

Requires Python version 3.7 or above. Python 3.7.9 is tested.

Requires PyTorch version 1.8.1 or above with CUDA. PyTorch 1.8.1 with CUDA 11 is tested. Please refer to https://pytorch.org/get-started/locally/ for installing PyTorch.

```
python -m pip install -r requirements.txt
cd data
bash prepare_data.sh
cd ..
```

## Hardware Requirements

8 GPUs required. 12GB GPU memory required for running BERT-Base (110M parameters) or RoBERTa-Base (123M parameters). 32GB GPU memory required for running BERT-Large (336M parameters) or RoBERTa-Large (353M parameters). We run our experiments on 8x NVIDIA V100 SXM2 32G GPUs. Internet connection required for downloading pre-trained language models and vocabulary files.

## Scripts for Reproducing Results

### Link Prediction

```
bash FB15k-237_bert_base.sh
bash FB15k-237_bert_large.sh
bash FB15k-237_roberta_base.sh
bash FB15k-237_roberta_large.sh
bash WN18RR_bert_base.sh
bash WN18RR_bert_large.sh
bash WN18RR_roberta_base.sh
bash WN18RR_roberta_large.sh
```

### Triplet Classification

```
bash FB13_bert_base.sh
bash FB13_bert_large.sh
bash FB13_roberta_base.sh
bash FB13_roberta_large.sh
bash WN11_bert_base.sh
bash WN11_bert_large.sh
bash WN11_roberta_base.sh
bash WN11_roberta_large.sh
```

## Experiment Results

### Link Prediction

| Dataset            | FB15k-237   |        | WN18RR  |        |
| ------------------ | ----------- | ------ | ------- | ------ |
| **Metric**         | **Hits@10** | **MR** | **Hits@10** | **MR** |
| LanE-BERT-Base     | 0.479       | 131    | 0.725   | 55     |
| LanE-BERT-Large    | 0.527       | 120    | 0.769   | 41     |
| LanE-RoBERTa-Base  | 0.500       | 116    | 0.737   | 53     |
| LanE-RoBERTa-Large | 0.533       | 108    | 0.786   | 35     |

### Triplet Classification

| Dataset            | WN11   | FB13  |
| ------------------ | ----------- | ------- |
| LanE-BERT-Base     | 93.3   | 91.2 |
| LanE-BERT-Large | 94.5 | 91.8 |
| LanE-RoBERTa-Base  | 92.3   | 91.1 |
| LanE-RoBERTa-Large | 93.8 | 91.6 |
