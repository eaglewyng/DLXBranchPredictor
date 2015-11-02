bp_type=$1
benchmark=$2

./run.sh mine $bp_type $benchmark > mine.out
sed -i 's/mydlx>/golddlxBP>/g' mine.out
./run.sh gold $bp_type $benchmark > gold.out
diff -y --suppress-common-lines mine.out gold.out