init:
	make -C terraform init

validate:
	make -C terraform validate

plan:
	make -C terraform plan

apply:
	make -C terraform apply

destroy:
	make -C terraform destroy

install:
	make -C ansible install

deploy:
	make -C ansible deploy
	