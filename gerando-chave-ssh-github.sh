#!/bin/bash

ssh-keygen -t ed25519 -C "felipendc10@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Copie essa chave vá até: GITHUB - settings/SSH and GPG keys"
echo "Clica em 'Nova chave SSH'"
cat ~/.ssh/id_ed25519.pub

