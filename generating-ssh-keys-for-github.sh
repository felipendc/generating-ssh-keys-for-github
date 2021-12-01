#!/bin/bash
# Script automated by Felipe Ndc aka Vicyos


# Asking for the user email:
echo "Enter your email:"
read email

# Doing the MAGIC under the hood:
ssh-keygen -t ed25519 -C $email
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Getting the generated SSH key:
echo "Copy this key and go to: GITHUB - settings/SSH and GPG keys"
echo "Click the 'New SSH key' button"
cat ~/.ssh/id_ed25519.pub
