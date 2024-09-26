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