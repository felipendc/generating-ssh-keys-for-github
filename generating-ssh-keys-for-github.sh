#!/bin/bash

ssh-keygen -t ed25519 -C "felipendc10@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Copy this key and go to: GITHUB - settings/SSH and GPG keys"
echo "Click the 'New SSH key' button"
cat ~/.ssh/id_ed25519.pub

