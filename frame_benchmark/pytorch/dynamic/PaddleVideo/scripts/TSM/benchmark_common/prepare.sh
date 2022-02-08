#!/usr/bin/env bash
# 执行路径在模型库的根目录下
################################# 安装框架 如:
echo "*******prepare benchmark start ***********"
pip install -U pip
echo `pip --version`
python ${BENCHMARK_ROOT}/paddlecloud/file_upload_download.py \
    --remote-path frame_benchmark/pytorch_req/pytorch_191/ \
    --local-path ./  \
    --mode download
ls
# pip install torch==1.9.1 -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install torch-1.9.1-cp37-cp37m-manylinux1_x86_64.whl -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install torchvision==0.10.1 -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install -r requirements.txt  -i https://pypi.tuna.tsinghua.edu.cn/simple

################################# 准备训练数据 如:
wget https://videotag.bj.bcebos.com/Data/k400_rawframes_small.tar \
    -O data/k400_rawframes_small.tar
tar -zxvf data/k400_rawframes_small.tar -C data/
echo "*******prepare benchmark end***********"