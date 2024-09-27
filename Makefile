init:
	terraform -chdir=terraform init -backend-config=secret.backend.tfvars

validate:
	terraform -chdir=terraform validate

plan:
	terraform -chdir=terraform plan

apply:
	terraform -chdir=terraform apply

destroy:
	terraform -chdir=terraform destroy

install:
	ansible-galaxy install -r ansible/requirements.yml

deploy:
	ansible-playbook -i ansible/inventory.ini -v --vault-password-file ansible/.vault_pass ansible/playbook.yml