deploy:
	ansible-playbook release.yml -i inventory.yml --extra-vars="version=v${V}" -vv -u yurait6

setup:
	ansible-galaxy install -r ./requirements.yml
	ansible-playbook setup.yml -i inventory.yml -vv -u yurait6
