# youtube-download

download a specific time chunk of an youtube video.

https://unix.stackexchange.com/questions/230481/how-to-download-portion-of-video-with-youtube-dl-command

show title

youtube-dl -e  https://youtu.be/yi52beDI9rY

show description

youtube-dl -e --get-description https://youtu.be/yi52beDI9rY

select format

youtube-dl -F https://youtu.be/yi52beDI9rY | grep best

get real url OUTPUT-OF-FIRST-URL

youtube-dl -g -f 22  https://youtu.be/yi52beDI9rY

```
https://rr1---sn-aigzrn7d.googlevideo.com/videoplayback?expire=1672114096&ei=UBuqY6OKJMXgW4C1uLgL&ip=148.252.129.169&id=o-AGQ4orwO-OM-UqITjvGcgSD1PNRPCH5ut3yDIA32kybn&itag=22&source=youtube&requiressl=yes&mh=JF&mm=31%2C26&mn=sn-aigzrn7d%2Csn-5hnekn76&ms=au%2Conr&mv=m&mvi=1&pl=23&initcwndbps=417500&vprv=1&mime=video%2Fmp4&ns=VfNpH5U4scNSKnup9GZ694AK&cnr=14&ratebypass=yes&dur=10883.726&lmt=1672010652314705&mt=1672092069&fvip=2&fexp=24001373%2C24007246&c=WEB&txp=5532434&n=rb7UbmNU3nYi0-Sya&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAOa5juHCZ202aOLacg8N1HcONh5N3tlYW1rReznDjPVlAiBvaELqVxDByZ9zAW5q1IrcdVmWobgAuF3mF8b5zbGHRg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRAIgbhLgaNRTy-8fKp9A3ipMzCgVaGAkNye7YPK8a7bdHc8CIHAJu8jdN8JEn8u1qDAjQwfT9LEWkvKaOa_opgccHtP_

```

download a specific part

ffmpeg -i "OUTPUT-OF-FIRST-URL" -ss 00:13:00.00 -to 00:17:00.00 -c copy out.mp4

source <(curl -s http://example.com/foo)


# Converting audio

https://superuser.com/questions/704493/ffmpeg-convert-m4a-to-mp3-without-significant-loss


```
ffmpeg -i woa_ba.weba  -c:v copy -c:a libmp3lame  woa_ba.mp3

ffmpeg -i woa_ba.weba  -c:v copy -c:a libmp3lame -q:a 4  woa_ba.mp3

```

# Downloading audio

```
./yt-dlp -f 140 'https://www.youtube.com/watch?v=9CdKl2HktGA&t=6627s&ab_channel=KINDL' -o woa1.m4a

./yt-dlp -f ba 'https://www.youtube.com/watch?v=9CdKl2HktGA&t=6627s&ab_channel=KINDL'
```