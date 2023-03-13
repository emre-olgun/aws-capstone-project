#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="XXXXXXXXXXXXXXXXXXXXXXXX"  # Write your token
git clone https://$TOKEN@github.com/emre-olgun/aws-capstone-project.git # change your repo URL
cd /home/ubuntu/aws-capstone-project # change your repository's name
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/aws-capstone-project/src # change your repository's name
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80