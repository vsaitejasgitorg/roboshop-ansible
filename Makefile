default:
	git pull
	ansible-playbook -i $(component_name)-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
#Execute by typing $ make component_name=[component] env=[dev,prod,test]

all:
	ansible-playbook -i frontend-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=frontend -e env=$(env)
	ansible-playbook -i redis-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=redis -e env=$(env)
	ansible-playbook -i mongodb-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mongodb -e env=$(env)
	ansible-playbook -i mysql-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mysql -e env=$(env)
	ansible-playbook -i rabbitmq-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=rabbitmq -e env=$(env)
	ansible-playbook -i catalogue-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=catalogue -e env=$(env)
	ansible-playbook -i user-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=user -e env=$(env)
	ansible-playbook -i cart-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=cart -e env=$(env)
	ansible-playbook -i shipping-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=shipping -e env=$(env)
	ansible-playbook -i payment-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=payment -e env=$(env)
    ansible-playbook -i dispatch-dev.saitejasroboshop.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=dispatch -e env=$(env)
