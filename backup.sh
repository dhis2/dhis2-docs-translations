#!/bin/bash

BRANCHES=( "2.29" "2.30" "2.31" "2.32" "master" )

for branch in ${BRANCHES[@]}
do
  git reset --hard
  git checkout -B $branch
  git pull origin $branch
  rm -rf .tx
  tx config mapping-remote https://www.transifex.com/hisp-uio/dhis-2-documentation-${branch//.}

  # include translated languages here
  # e.g. to include French and Spanish:
  # LANGUAGES=( fr es )
  LANGUAGES=( fr )

  for lang in ${LANGUAGES[@]}
  do
    rm -rf ${lang}
    rm -f source_me
    tx pull -l ${lang}
    git add translations
  done

  rm -rf .tx
  git commit -m "sync latest doc translations for branch $branch"
  git push origin $branch

done
