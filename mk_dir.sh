#!/bin/bash
#Script to  create persistance  bitnami directory tree
mkdir bitnami
mkdir bitnami/mariadb bitnami/prestashop
cd
sudo chown -R 1001:1001 bitnami/
