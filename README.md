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

download a specific part

ffmpeg -i "OUTPUT-OF-FIRST-URL" -ss 00:13:00.00 -to 00:17:00.00 -c copy out.mp4