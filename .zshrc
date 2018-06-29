export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"
source ~/.bash_profile
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
