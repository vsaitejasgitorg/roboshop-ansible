git pull
ansible-playbook -i $1-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321  roboshop.yml -e component_name=$1