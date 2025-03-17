#!/bin/bash
set -e

for n in {1..499};
do
    cat src/file0.py | sed "s/0/$n/g" > "src/file$n.py"
    cat src/test_file0.py | sed "s/0/$n/g" > "src/test_file$n.py"
done
