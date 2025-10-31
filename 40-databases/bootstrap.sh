#!/bin/bash

dnf install ansible -y
ansible-pull -U https://github.com/Tiru-IT/ansible-roboshop-roles.git -i inventory.ini -e component=mongodb main.yaml