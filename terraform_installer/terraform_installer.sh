# ubuntu / debian
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

# zsh 기준(zshell 설정 파일이 없는지 확인하기 위함)
touch ~/.zshrc
terraform -install-autocomplete
source ~/.zshrc