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
echo " "
echo "==============================================================="
echo "1) Copy the below key and go to: GITHUB - 'settings/SSH and GPG keys'"
echo "2) Click the 'New SSH key' button:"
echo "3) Then, give it a title and paste the key in the key field."
echo ""===============================================================""
echo " "

cat ~/.ssh/id_ed25519.pub

# Testing my SSH connection:
# ssh -T git@github.com
