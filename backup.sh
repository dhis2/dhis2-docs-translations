#!/bin/bash

BRANCHES=( "2.29" "2.30" "2.31" "2.32" "master" )

for branch in ${BRANCHES[@]}
do
  git reset --hard

  out=$(git rev-parse --verify "origin/${branch}" 2>&1)
  if [[ "$out" == fatal* ]]; then
      echo "creating branch: ${branch}"
      git checkout -b $branch
  else
      git checkout $branch
      git pull origin $branch
  fi

  mkdir -p .tx
  echo "[main]" > .tx/config
  echo "host = https://www.transifex.com" >> .tx/config

  tx config mapping-remote https://www.transifex.com/hisp-uio/dhis-2-documentation-${branch//.}

  # include translated languages here
  # e.g. to include French and Spanish:
  # LANGUAGES=( fr es )
  LANGUAGES=( fr )

  for lang in ${LANGUAGES[@]}
  do
    tx pull -l ${lang}
  done

  git add .
  git commit -m "sync latest doc translations for branch $branch"
  git push origin $branch

done
