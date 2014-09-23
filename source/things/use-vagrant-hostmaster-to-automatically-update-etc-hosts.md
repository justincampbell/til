---
date: 2012-12-03
slug: use-vagrant-hostmaster-to-automatically-update-etc-hosts
tags: tools
title: Use vagrant-hostmaster to automatically update /etc/hosts
---

Use [vagrant-hostmaster](https://github.com/mosaicxm/vagrant-hostmaster) to automatically update `/etc/hosts`
with your [Vagrant](http://vagrantup.com) VMs:

```sh
$ gem install vagrant-hostmaster
$ vagrant provision
[vagrant] Updating host entry for box0 VM. Administrator privileges will be required…
[vagrant] Updating host entry for box1 VM. Administrator privileges will be required...
```

```sh
127.0.0.1       localhost
255.255.255.255 broadcasthost
::1             localhost 
fe80::1%lo0     localhost
33.33.33.100  box0  # VAGRANT: b3e2de74-... (box0)
33.33.33.101  box1  # VAGRANT: 83a8ee1d-... (box1)
```
