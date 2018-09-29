for i in {1..100}
do
	ffmpeg -i songs/$i.mp3 -ss 00:00:00 -t 00:01:00 -acodec  copy ./archive/music/$i.mp3 1>/dev/null 2>&1
	cp lyrics/$i.txt ./archive/text/$i.txt
	cp imgs/$i.jpg ./archive/image/$i.jpg
	echo progress:$i/100
done

