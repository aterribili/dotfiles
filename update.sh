#!/bin/bash
echo "Updating .config"
rm -rf .config/ .bashrc .bash_aliases .bash_profile
cp -R ~/.config/ .config/
cp ~/.bashrc ~/.bash_aliases ~/.bash_profile .

