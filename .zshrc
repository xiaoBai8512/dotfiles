export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"
source "/usr/local/opt/nvm/nvm.sh"
export LANG=en_US.UTF-8
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export NVM_DIR="$HOME/.nvm"
export PATH=~/flutter/bin:$PATH
export PATH=~/Library/Android/sdk/tools/:$PATH
export PATH=~/Library/Android/sdk/tools/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export GOPATH=~/workspace/go-project
export PATH=$GOPATH/bin:$PATH
export ANDROID_HOME=~/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home/
export ZSH=/Users/shikun/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
if [[ -r /usr/local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
	source /usr/local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
fi
[ -f /usr/local/etc/profile.d/autojump.sh  ] && . /usr/local/etc/profile.d/autojump.sh
plugins=(
git
brew
last-working-dir
macports
pip
pod
python
tmux
zsh-autosuggestions
zsh-syntax-highlighting
)
