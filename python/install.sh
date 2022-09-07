echo '安装python'
cd ~
apt install -y python3-pip && \
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
pip install --upgrade pip
