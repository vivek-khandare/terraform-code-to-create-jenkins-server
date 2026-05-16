#!/bin/bash

# install jenkins
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
sudo yum install java-21-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins


# #!/bin/bash

# # install jenkins
# sudo yum update -y
# sudo yum upgrade -y

# # Install Java 21
# sudo yum install java-21-amazon-corretto -y

# # Add Jenkins repo manually (wget unreliable in user_data)
# sudo tee /etc/yum.repos.d/jenkins.repo > /dev/null <<'EOF'
# [jenkins]
# name=Jenkins
# baseurl=https://pkg.jenkins.io/redhat-stable
# gpgcheck=1
# gpgcakey=https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
# EOF

# # Import GPG key
# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# # Install Jenkins (nogpgcheck to avoid GPG issues)
# sudo yum install jenkins --nogpgcheck -y

# # Start Jenkins
# sudo systemctl daemon-reload
# sudo systemctl enable jenkins
# sudo systemctl start jenkins





# install git
sudo yum install git -y

# install terraform

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

# install kubectl

sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin && sudo cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin

