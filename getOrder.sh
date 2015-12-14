echo $1
grep "\\input{MainMatter" $1 | cut -d\{ -f2 | cut -d\} -f1 | xargs ./getOrder.sh 
