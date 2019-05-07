#!/bin/bash
####################################
#
# Clone all of you repositories from GitHub to your local system
#
####################################

CNTX={users}; NAME={acbrandao}; PAGE=1
curl "https://api.github.com/$CNTX/$NAME/repos?page=$PAGE&per_page=100" |
  grep -e 'git_url*' |
  cut -d \" -f 4 |
  xargs -L1 git clone
