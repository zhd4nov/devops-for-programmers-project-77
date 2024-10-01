install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v --vault-password-file .vault_pass playbook.yml