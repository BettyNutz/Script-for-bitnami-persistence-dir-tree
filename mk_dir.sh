#!/bin/bash
# Script to create persistent bitnami directory tree in the user's home directory

# Create the directory tree
mkdir -p "$HOME/bitnami/mariadb" "$HOME/bitnami/prestashop"

# Change ownership
sudo chown -R 1001:1001 "$HOME/bitnami"

# Verify the directories were created
if [[ -d "$HOME/bitnami" && -d "$HOME/bitnami/mariadb" && -d "$HOME/bitnami/prestashop" ]]; then
  echo "Directories created and ownership changed successfully:"
  echo "$HOME/bitnami"
  echo "$HOME/bitnami/mariadb"
  echo "$HOME/bitnami/prestashop"
else
  echo "Failed to create directories or change ownership."
  exit 1
fi
