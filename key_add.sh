#!/bin/bash
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/stuydw_id_rsa
