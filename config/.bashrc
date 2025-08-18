# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

export PS1="\[\e[00;36m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;32m\]\h\[\e[0m\]\[\e[00;37m\] \t \[\e[0m\]\[\e[01;32m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\]$ "
