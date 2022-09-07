export GITHUB_ROOT={$GITHUB_ROOT:-'https://ghproxy.com/https://raw.githubusercontent.com/bananalone/install/tree/main'}

echo '安装zsh和ohmyzsh'
cd ~
apt install -y zsh && \
export REMOTE=https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh.git && \
echo n | /bin/bash -c $(curl -fsSL https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh) && \
chsh -s /bin/zsh
