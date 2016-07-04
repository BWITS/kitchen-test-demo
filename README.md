### How to run kitchen test?

http://kitchen.ci

### quick start

After you installed kitchen, you can run test directly:

    find . -name ".kitchen.yml"
    # run kitchen command under the same folder of .kitchen.yml 
    kitchen test

kitchen test = kitchen create + kitchen converge + kitchen verify + kitchen destroy

### Demo

* Kitchen Test with driver vagrant
* Kitchen Test with driver docker
* Kitchen Test with provisioner chef-solo
* Kitchen Test with provisioner ansible-playbook
* Kitchen Test with verifier Serverspec 

### serverspec resource

http://serverspec.org/resource_types.html

### Notes for running docker on mac

You have to add `use_sudo: false` as below in `.kitchen.yml`
refer issue: https://github.com/test-kitchen/kitchen-docker/issues/201
```
driver:
  name: docker
  use_sudo: false
provisioner:
  name: chef_solo
```

### Connecting To a Test Kitchen Instance Via SFTP, SSH, or SCP

http://www.ryanchapin.com/fv-b-4-787/Connecting-To-a-Test-Kitchen-Instance-Via-SFTP--SSH--or-SCP.html

### work behind corporate proxy

```
provisioner:
  name: ansible_playbook
  hosts: test-kitchen
  ansible_verbose: true
  ansible_verbosity: 3
  require_chef_for_busser: false
  http_proxy: http://10.0.0.1:3128
  https_proxy: http://10.0.0.1:3128
  no_proxy: localhost,127.0.0.1

verifier:
  name: serverspec
  http_proxy: http://10.0.0.1:3128
  https_proxy: http://10.0.0.1:3128
  no_proxy: localhost,127.0.0.1
  
```
