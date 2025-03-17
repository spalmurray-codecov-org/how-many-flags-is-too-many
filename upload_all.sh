#!/bin/bash
set -e

codecovcli create-commit
codecovcli create-report

for n in {0..499};
do
    codecovcli do-upload --disable-file-fixes --disable-search -f "coverage$n.xml" -F "flag$n" &
done
