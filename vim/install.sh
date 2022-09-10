cd ~

if ! command -v zsh > /dev/null 2>&1; then
    apt install -y vim
fi

curl -fsSL "https://ghproxy.com/https://raw.githubusercontent.com/bananalone/install/main/vim/.vimrc" -o ~/.vimrc