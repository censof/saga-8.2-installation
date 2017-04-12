- name: copy onconfig.csmsaga
  shell: cp onconfig.std onconfig.csmsaga
  args:
       chdir: $INFORMIXDIR/etc/
  ignore_errors: yes

- name: copy sqlhosts
  shell: cp sqlhosts.std sqlhosts
  args:
       chdir: $INFORMIXDIR/etc/
  ignore_errors: yes


ol_csmsaga       onipcshm       192.168.2.238    service_csmsaga


command 

ansible-playbook -vvvv main.yml --ask-pass -c paramiko -e "informix_dir=/opt/IBM/informix/ids informix_home_dir=/opt/installer informix_version=11.001"
