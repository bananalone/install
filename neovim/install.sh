# 安装neovim
sudo apt update
sudo apt install -y software-properties-common
sudo apt-add-repository -y ppa:neovim-ppa/stable
sudo apt update
sudo apt install -y neovim

RC_PATH="$HOME/.bashrc"
if [[ "$SHELL" == */zsh ]]; then
    echo 'now use zsh'
    RC_PATH="$HOME/.zshrc"
fi

echo 'alias v=nvim vi=nvim vim=nvim' >> $RC_PATH
