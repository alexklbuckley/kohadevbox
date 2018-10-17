#!/bin/bash

cp vars/user.yml.sample vars/user.yml

read -p "Enter your Koha Bugzilla username: " username
`sed -i "100s/.*/bz_user: ${username}/" vars/user.yml`

read -p "Enter your Bugzilla password: " password
`sed -i "101s/.*/bz_password: ${password}/" vars/user.yml`

