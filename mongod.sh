cp mongo.repo /etc/yum.repos.d/mongo.repo

yum install mongodb-org -y

#echo "Update listen address from 127.0.0.1 to 0.0.0.0 in /etc/mongod.conf"
sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

systemctl enable mongod
systemctl start mongod

