# Ansible servers playbook

## WARNING: This repository is still a work in progress, so much so, that the code below will currently NOT work and is likely to significantly change!

## Instruction

##### Install ansible, see [ansible installation documentation](http://docs.ansible.com/ansible/intro_installation.html#installation)
##### Clone this github repository

```bash
cd
git clone {github_repo_url}
```

##### Set playbooks variables

First, you need to set your inventory and ansible configuration file.

1. Add you servers ip or hostname in ansible-playbooks/hosts.
1. Set remote_user variable as usual admin login on your servers.
1. Create your playbook and variables files from sample files.

Here's a example for bootstrap playbook..

```bash
cd ~/ansible_playbooks/bootstrap
mv main.sample.yml main.yml
mv vars/main.sample.yml vars/main.yml
```
Then you need choose your configuration by editing variables values.

##### Finaly you just have to execute the playbook
remove --check in ordre to apply changes

```bash
cd ~/ansible_playbooks
ansible-playbook bootstrap/main.yml --check
```

##### Enjoy your easy installations


---
## Bootstrap

This playbook is use to bootstrap a server, it include the security stuff and common packages

#### Variables example

```YAML

```

#### Roles
* apt
* server configuration
* server administrator
* ssh configuration
* ufw
* fail2ban

---
## Fancy settings
@TODO

### Roles
* git
* bash
* vim
* screen

---
## Web server
@TODO

### Roles
* nodejs
* nginx
* haproxy
* letsencrypt
* supervisor

---
## Deploy website
@TODO

### Roles
* nginx
* haproxy
* letsencrypt
* supervisor

---
## Mail server
@TODO

### Roles
* posfix
* courier-imap

### Links
[repleo - ansible-role-mail](https://github.com/repleo/ansible-role-mail)

---
## Webmail server
@TODO

### Roles
* rainloop

### Links
[repleo - ansible-role-mail](https://github.com/repleo/ansible-role-mail)

---
## Server monitoring
@TODO

### Roles
* linux dash
* or monit
* or agios
* or ...

---
## Web services
@TODO

### Roles
* analitycs

## Databases
@TODO

### Roles
* postgresql
* sqlite3

---
## Seedbox
@TODO

This playbook create a seedbox server.

### Roles
* sabnzbd [website](https://sabnzbd.org/)
... Binary newsreader (Usenet)
* rtorrent [website](https://doc.ubuntu-fr.org/rtorrent)
...Minimal torrent server
* plexmediaserver [website](https://www.plex.tv)
...Web interface to organize media chaos
* sickbeard [website](http://sickbeard.com/)
...Sick Beard is a PVR for newsgroup users (with limited torrent support).
* couchpotato [website](https://couchpota.to/) | [article](http://www.geekmag.fr/couchpotato-telecharger-facilement-tous-vos-films-preferes-par-torrent/)
...Search movies interface and add task to rtorrent
* sonarr [website](https://sonarr.tv/) | [article](https://b0b.fr/2016/02/11/automatisez-telechargement-series-tv-sonarr/)
...Automaticly add task to rtorrent, download tv show when they get available

### Links

[mastermind playbook](https://github.com/jalaziz/mastermind)
