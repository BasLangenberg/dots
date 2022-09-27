# Dots

## Outline

Originally, this said:

"I like immutable infrastructure. My favorite development and general working platform is an Arch Linux based system with i3wm using a bunch of commandline tools."

"Let's make that immutable too."

In the end, this repository is meant to be a portable dotfile repository setting up everything with Ansible, targetting WSL2 / Ubuntu on Windows 10.

## Features

- Setup a WSL environment to my taste

## Test

Repo is tested with Molecule
For testing with an Ubuntu, use the provided Vagrantfile with this repo.

## Issues

On 2022-09-24, issues with pip3 and cryptography / pyOpenssl were discovered. They can be fixed with this script

```bash
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip3 install cryptography --upgrade
sudo pip3 install pyOpenssl --upgrade
```

## Credits

Inspiration came from [LARBS](https://larbs.xyz/)

Dotfiles idea bororowed from [LARBS](https://larbs.xyz/) and [wincent](https://github.com/wincent/wincent)

AUR Support implemented by [ansible-aur](https://github.com/pigmonkey/ansible-aur), using commit 33929f9 (Dec 3, 2017)
