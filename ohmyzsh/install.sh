cd ~
apt install -y git zsh && \
export REMOTE=https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh.git && \
echo "n" | /bin/bash -c "$(curl -fsSL https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh)" && \
chsh -s /bin/zsh
