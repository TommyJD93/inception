
echo "VM setup will begin in 5 seconds..."
sleep 5

echo "updating apt..."
@sudo apt update 2> /dev/null

echo "upgrading apt packages..."
@sudo apt upgrade -y 2> /dev/null

echo "installing git..."
@sudo apt install -y git 2> /dev/null

echo "installing make..."
@sudo apt install -y make 2> /dev/null

echo "installing vim..."
@sudo apt install -y vim 2> /dev/null

echo "installing vscode..."
@sudo apt install -y vscode 2> /dev/null

# Docker setup

# Add Docker's official GPG key:
sudo apt update -y 2> /dev/null
sudo apt install -y ca-certificates curl gnupg 2> /dev/null
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y 2> /dev/null

sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin 2> /dev/null


echo "installing docker..."
@sudo apt install -y docker 2> /dev/null
