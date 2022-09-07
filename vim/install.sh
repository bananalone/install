export GITHUB_ROOT={$GITHUB_ROOT:-'https://ghproxy.com/https://raw.githubusercontent.com/bananalone/install/main'}

cd ~
apt install -y vim && \
curl -fsSL "$GITHUB_ROOT/vim/.vimrc" -o ~/.vimrc