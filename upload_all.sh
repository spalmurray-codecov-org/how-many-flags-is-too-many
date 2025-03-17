for n in {0..4};
do
    pytest --cov --cov-branch --cov-report=xml "src/test_file$n.py"
    codecovcli upload-process -F "flag$n"
done
