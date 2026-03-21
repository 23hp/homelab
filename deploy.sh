#!/bin/bash

clear

bw sync

export BW_SESSION=$(bw unlock --passwordfile .log --raw)
if [ -z "$BW_SESSION" ]; then
    export BW_SESSION=$(bw unlock --raw)
fi

ansible-playbook site.yml

bw lock
