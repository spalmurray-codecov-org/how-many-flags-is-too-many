#!/bin/bash
set -e

codecovcli create-commit
codecovcli create-report

for n in {0..99};
do
    pytest --cov --cov-branch --cov-report=xml "src/test_file$n.py"
    codecovcli do-upload -F "flag$n"
done
