sudo apt install -y build-essential procps curl file git && \
export HOMEBREW_BREW_GIT_REMOTE="http://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git" && \
export HOMEBREW_CORE_GIT_REMOTE="http://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git" && \
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