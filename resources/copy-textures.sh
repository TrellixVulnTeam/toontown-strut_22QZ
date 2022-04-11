for f in $(find ./ -name '*.jpg');
do
echo processing $f
cp $f ./textures/
done
for f in $(find ./ -name '*.png');
do
echo processing $f
cp $f ./textures/
done