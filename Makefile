playbook-var-dir = $(if $(TEST_PROJECT_DIR),$(TEST_PROJECT_DIR),$(PWD))

install:
	cd $(playbook-var-dir)
	ansible-playbook up_down_project.yml -i hosts -u root -k -e project_dir=$(playbook-var-dir) -t up

uninstall:
	cd $(playbook-var-dir)
	ansible-playbook up_down_project.yml -i hosts -u root -k -e project_dir=$(playbook-var-dir) -t down

scale:
	cd $(playbook-var-dir)
	ansible-playbook up_down_project.yml -i hosts -u root -k -e project_dir=$(playbook-var-dir) -e scale=$(APP_QUANTITY) -t scaleapp
