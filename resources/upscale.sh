for f in ./textures/*.jpg; do
	width=`identify -format '%w' $f`
	height=`identify -format '%h' $f`
	if (( height < 200 )); then
                if (( width < 175 )); then
			waifu2x-ncnn-vulkan -i $f -o $f -s 4 -n 2 -v
		fi
	fi
	echo ok
done
