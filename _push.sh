#!/bin/sh

export GH_OWNER='test-new-org'
export GH_REPO='test-new-org.github.io'
export GH_BRANCH='master'

# setup git
git config --global user.email "ben@ecoquants.com"
git config --global user.name "Ben Best"
git config --global push.default matching

git remote add origin "https://${GH_TOKEN}@github.com/${GH_OWNER}/${GH_REPO}.git"

# git commit
git add --all
git commit -am "Travis render & push [skip ci]: $TRAVIS_BUILD_NUMBER"

# git push
git push -q origin HEAD:${GH_BRANCH}
