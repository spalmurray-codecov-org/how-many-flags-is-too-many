#!/bin/bash
set -e

for n in {0..499};
do
    pytest --cov --cov-branch --cov-report="xml:coverage$n.xml" "src/test_file$n.py"
done
