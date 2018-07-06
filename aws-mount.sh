sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem ubuntu@ec2-18-179-7-129.ap-northeast-1.compute.amazonaws.com:/home/ubuntu ~/aws-home
sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem ubuntu@ec2-18-179-7-129.ap-northeast-1.compute.amazonaws.com:/var/www/html ~/aws-www

