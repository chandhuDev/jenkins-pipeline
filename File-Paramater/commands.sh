yum install -y update
yum install  -y wget
wget --version
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
yum install -y update

yum install -y fontconfig java-17-openjdk
yum install -y jenkins
systemctl daemon-reload

echo java -version

systemctl enable jenkins
systemctl status jenkins

yum install -y firewalld
systemctl start firewalld
systemctl start jenkins
firewall-cmd --zone=public --add-port=8080/tcp --permanent
firewall-cmd --reload
firewall-cmd --zone=public --list-ports