 if ! command -v zsh > /dev/null 2>&1; then
     sudo apt install -y zsh
 fi

 if [ -d $HOME/.oh-my-zsh ]; then
     rm -rf $HOME/.oh-my-zsh
 fi

 export REMOTE=https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh.git
 echo "n" | /bin/bash -c "$(curl -fsSL https://ghproxy.com/https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh)"
 git clone https://ghproxy.com/https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
 git clone https://ghproxy.com/https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
 curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/bananalone/install/main/ohmyzsh/.zshrc -o $HOME/.zshrc
