#!/bin/bash
set -xeo pipefail

upstreamurl=https://github.com/honza/vim-snippets.git
if git config remote.upstream.url; then
    git remote set-url upstream "$upstreamurl"
else
    git remote add upstream "$upstreamurl"
fi
git remote update

git co main
git merge upstream/master
