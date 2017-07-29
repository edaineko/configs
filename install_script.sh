# Install Jenkins
# Use the official YUM repo to install the latest stable version of Jenkins
cd ~
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
sudo yum install jenkins

# Start the Jenkins service and set it to run at boot time:
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service

# In order to allow visitors access to Jenkins, you need to allow inbound traffic on port 8080:
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd --reload


# Install Apache
