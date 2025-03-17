for n in {1..4};
do
    cat src/file0.py | sed "s/0/$n/" > "src/file$n.py"
    cat src/test_file0.py | sed "s/0/$n/" > "src/test_file$n.py"
done
