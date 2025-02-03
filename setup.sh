brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install openshift-cli
brew install pre-commit
brew install ipcalc
brew install node
brew install watch
brew install tree
brew install argocd
brew install marp-cli
brew install kubectl
brew install helm
brew install glab
brew install gh
brew install fzf
brew install kubectx
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
ln -sf ~/dotfiles/.zshrc ~/.zshrc
kubectl krew install stern
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
