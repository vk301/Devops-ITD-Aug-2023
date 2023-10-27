echo "STEP_1 Update apt"
	sudo apt update 

echo "STEP_2: Install Java ...."
	sudo apt install fontconfig openjdk-17-jre

echo "STEP_3 Add Jenkins to apt list" 
	sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
	  https://pkg.jenkins.io/debian/jenkins.io-2023.key
	echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
	  https://pkg.jenkins.io/debian binary/ | sudo tee \
	  /etc/apt/sources.list.d/jenkins.list > /dev/null
	sudo apt update

echo "STEP_4 Install Jenkins"
	sudo apt install jenkins

echo "STEP_5 Start Jenkins to apt list"
	sudo systemctl start jenkins 

echo "STEP_6 Get inital admin password"
sudo cat 

