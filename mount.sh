sudo mount -t cifs //192.168.30.19/www /mnt/www-lazurite-io -o username=root,password=@Lazurite920,vers=1.0
sudo mount -t cifs //192.168.30.16/api /mnt/api-lazurite-io -o username=pi,password=@Lazurite920,vers=1.0


sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem ubuntu@ec2-18-179-7-129.ap-northeast-1.compute.amazonaws.com:/home/ubuntu ~/aws-home
sshfs -o IdentityFile=/home/naotaka/.ssh/solutions-op-key-pair.pem ubuntu@ec2-18-179-7-129.ap-northeast-1.compute.amazonaws.com:/var/www/html ~/aws-www
fusermount -u ~/aws-home
fusermount -u ~/aws-www

