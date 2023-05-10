#!/bin/bash
export SHELL4WIN=`echo ${SHELL4WIN}| tr '\' '/'`

export TERM=xterm-256color
export PS1="[$(whoami)@$(hostname) \w]\$ "
export HOME=$USERPROFILE

. ${SHELL4WIN}bin/fd.sh

[ -z "$CURRENT_DIR" ] && cd || cd  "$CURRENT_DIR"
unset CURRENT_DIR
