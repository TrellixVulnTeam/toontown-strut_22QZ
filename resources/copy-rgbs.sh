for f in $(find ./ -name '*.rgb');
do
echo processing $f
cp $f ./rgbs/
done