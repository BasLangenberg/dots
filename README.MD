# Dots
Originally, this said:

"I like immutable infrastructure. My favorite development and general working platform is an Arch Linux based system with i3wm using a bunch of commandline tools."

"Let's make that immutable too."

In the end, this repository is meant to be a portable dotfile repository setting up everything with Ansible, while being able to use this on RHEL / Ubuntu as well

# Implements
 - Full Arch setup including rice and dotfiles for development purposes
 - Handle user creation and selection in a sane way
 - For non arch systems, run without root requirements

# Test
If you want to use arch, you can boot up a vm, and on the root prompt do:

```
curl -LO http://utils.homecooked.nl/bootstrap.sh && bash bootstrap.sh
```

Which will prompt to install and setup Arch Linux

For testing of RHEL and Ubuntu, use the provided Vagrantfile with this repo.

# Credits
Inspiration came from [LARBS](https://larbs.xyz/)
Dotfiles idea bororowed from [LARBS](https://larbs.xyz/) and [wincent](https://github.com/wincent/wincent)
AUR Support implemented by [ansible-aur](https://github.com/pigmonkey/ansible-aur), using commit 33929f9 (Dec 3, 2017) 
