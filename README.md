### How to run kitchen test?

http://kitchen.ci

### quick start

After you installed kitcher, you can run test directly:

    cd kitchen-<...>
    kitcher test

### Kitchen Test with kitchen-vagrant

````
driver: kitchen-vagrant
provisioner: chef_solo
````

### Kitchen Test with kitchen-docker

````
driver: kitchen-docker
provisioner: chef_solo
````

### Kitchen Test with ansible-playbook
```
driver: kitchen-docker
provisioner: ansible-playbook
```

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
