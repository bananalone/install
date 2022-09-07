set -e

# 设置apt国内源
echo '设置apt国内源'
cd ~
echo 'deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security multiverse' > /etc/apt/sources.list && \
apt update && apt upgrade -y

# 安装依赖
echo '安装依赖'
cd ~
apt install -y build-essential procps curl file git

# 安装配置vim
echo '安装配置vim'
cd ~
apt install -y vim && \
curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim -o ~/.vimrc

# 安装zsh和ohmyzsh
echo '安装zsh和ohmyzsh'
cd ~
apt install -y zsh && \
export REMOTE=https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh.git && \
echo n | /bin/bash -c $(curl -fsSL https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh) && \
chsh -s /bin/zsh && exec /bin/zsh

# 下载Linuxbrew, 并设置国内源
echo '下载Linuxbrew, 并设置国内源'
cd ~ && \
export HOMEBREW_BREW_GIT_REMOTE="http://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git" && \  # put your Git mirror of Homebrew/brew here
export HOMEBREW_CORE_GIT_REMOTE="http://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git" && \  # put your Git mirror of Homebrew/homebrew-core here
echo "\n" | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH && \
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles' >> ~/.bashrc && \
echo export "PATH=/home/linuxbrew/.linuxbrew/bin:$PATH" >>  ~/.bashrc && \
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles' >> ~/.zshrc && \
echo export "PATH=/home/linuxbrew/.linuxbrew/bin:$PATH" >>  ~/.zshrc && \
cd "$(brew --repo)" && \
git remote set-url origin http://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git && \
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" && \
git remote set-url origin http://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git && \
brew update

# 安装python
echo '安装python'
cd ~
brew install python && \
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
pip install --upgrade pip