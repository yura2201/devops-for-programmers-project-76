deploy:
	ansible-playbook playbook.yml -i inventory.yml --extra-vars="version=v${V}" -vvv -u yurait6 --vault-password-file ~/.local/bin/ansible-vault-data/vault-pass.txt

setup:
	ansible-galaxy install -r ./requirements.yml
	ansible-playbook setup.yml -i inventory.yml -vv -u yurait6
