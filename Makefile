kubernetes:
	ansible-playbook -i inventory.ini copiar_kubeconfig.yml

atualizar:
	ansible-playbook -i inventory.ini atualizar_reiniciar.yml

ansible:
	ansible-playbook -i inventory.ini configurar_acesso_ansible.yml --ask-become-pass --ask-pass