#find ./ -name "*(copy*" > deletelist
file=$(cat deletelist)

for line in $file
do
    rm "$line"
done