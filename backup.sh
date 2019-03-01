#!/bin/bash

# include translated languages here
# e.g. to include French and Spanish:
# LANGUAGES=( fr es )
LANGUAGES=( fr )

for lang in ${LANGUAGES[@]}
do
  rm -rf ${lang}
  tx pull -l ${lang}
  git add ${lang}
done
git commit -m "sync latest from transifex"
git push origin master
