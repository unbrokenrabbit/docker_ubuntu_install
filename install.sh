# Install packages to allow apt to use a repository over HTTPS
apt-get \
    install \
    -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Retrieve the official Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the official Docker repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker from the official repository
apt-get update
apt-get install -y docker-ce

