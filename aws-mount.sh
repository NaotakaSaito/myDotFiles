sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem \
	ubuntu@ec2-52-69-244-75.ap-northeast-1.compute.amazonaws.com:/var/www/html \
	~/aws-www

sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem \
	ubuntu@ec2-13-231-71-177.ap-northeast-1.compute.amazonaws.com:/home/ubuntu \
	~/aws-api

#sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem \
	#ubuntu@ec2-18-179-7-129.ap-northeast-1.compute.amazonaws.com:/var/www/html \
	#~/aws-www2

#sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem \
	#ubuntu@ec2-18-179-7-129.ap-northeast-1.compute.amazonaws.com:/home/ubuntu \
	#~/aws-api2

