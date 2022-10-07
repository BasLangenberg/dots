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

Initial inspiration came from [LARBS](https://larbs.xyz/), the dotfiles idea bororowed from [LARBS](https://larbs.xyz/) and [wincent](https://github.com/wincent/wincent)

AUR Support implemented by [ansible-aur](https://github.com/pigmonkey/ansible-aur), using commit 33929f9 (Dec 3, 2017)

October 2022, I moved to Neovim as I was inspired by the amazing content create by [ThePrimeagen](https://github.com/ThePrimeagen) ([Github](https://github.com/ThePrimeagen/.dotfiles) and [TJ DeVries](https://github.com/tjdevries) ([Github](https://github.com/tjdevries/config_manager))
