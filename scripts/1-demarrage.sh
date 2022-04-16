#!/bin/bash

MY_USER=user1

# scripts de demarrage :
# Monter le répertoire distant du serveur :
mkdir -p ~/de10nano_wd/remote/
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
$MY_USER@51.210.241.245: ~/de10nano_wd/remote/

# Les fichiers sont disponibles dans ~/de10nano_wd/remote/

