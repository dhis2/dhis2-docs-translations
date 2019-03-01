#!/bin/bash

rm -rf fr
tx pull -l fr
git add fr
git commit -m "sync latest from transifex"
git push origin master
