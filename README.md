### How to run kitchen test?

http://kitchen.ci

### quick start

After you installed kitchen, you can run test directly:

    cd kitchen-<...>
    kitchen test

### kitchen test = kitchen create + kitchen converge + kitchen verify + kitchen destroy

### Demo

Kitchen Test with driver vagrant
Kitchen Test with driver docker

Kitchen Test with provisioner chef-solo
Kitchen Test with provisioner ansible-playbook

Kitchen Test with verifier Serverspec 

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
