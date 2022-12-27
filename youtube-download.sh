#!/bin/bash

# Download a YouTube video and convert it to MP3

default_yurl="https://youtu.be/75kYiAjcQZ4"
default_start_time="00:00:10"
default_end_time="00:00:15"

# get file name from title of video
function get_file_name {
    # replace special characters with underscores
    # and remove leading and trailing underscores
    fname=$(echo $1 | sed -e 's/\W/_/g' -e 's/^_\+//' -e 's/_\+$//')

    # truncate to 80 characters
    echo $fname | colrm 80

}

# check if youtube-dl and ffmpeg are installed
function check_dependencies() {
    # check if youtube-dl is installed
    if ! command -v youtube-dl &> /dev/null; then
        echo "youtube-dl could not be found"
        exit 1
    fi

    # check if ffmpeg is installed
    if ! command -v ffmpeg &> /dev/null; then
        echo "ffmpeg could not be found"
        exit 1
    fi
}

# start script 

echo "Usage: youtube-download.sh <youtube-url>"


# check if youtube-dl and ffmpeg are installed
check_dependencies



# check number of arguments
if [[ $# < 1 ]]; then
    # ask for youtube url
    echo "Enter YouTube URL"
    echo "OR press Enter for $default_yurl :"
    read yurl

    # check if yurl is empty
    if [[ -z $yurl ]]; then
        yurl="$default_yurl"
    fi
else
    yurl=$1
fi




# show title of video
title=$(youtube-dl --get-title $yurl)
echo "Title"
echo "-------------------------------------------------"
echo "$title"
echo "-------------------------------------------------"
echo 


# show description of video
description=$(youtube-dl --get-description $yurl)
echo "Description"
echo "-------------------------------------------------"
echo "$description"
echo "-------------------------------------------------"

# show formats
echo "Formats"
echo "-------------------------------------------------"
youtube-dl -F $yurl
echo "-------------------------------------------------"



best_format_line=$(youtube-dl -F $yurl | grep best)
# echo "Best format: $best_format_line"

# get format code
format_code=$(echo $best_format_line | cut -d ' ' -f 1)
echo "Format code: $format_code"

# get real url
url=$(youtube-dl -f $format_code -g $yurl)
# echo "URL: $url"


# ask for start time
echo "Enter start time (hh:mm:ss) OR press Enter for $default_start_time"
read start_time
if [[ -z $start_time ]]; then
    start_time="$default_start_time"
fi

# ask for end time
echo "Enter end time (hh:mm:ss) OR press Enter for $default_end_time"
read end_time
if [[ -z $end_time ]]; then
    end_time=$default_end_time
fi

echo "$title"
auto_filename=$(get_file_name "$title" )
echo "Auto filename: $auto_filename"
auto_filename="$auto_filename-$start_time-$end_time.mp4"
echo "Auto filename: $auto_filename"


# ask for filename
echo "Enter filename:"
echo "or press Enter for $auto_filename"
read filename
if [[ -z $filename ]]; then
    filename=$auto_filename
fi



# download video with ffmpeg
ffmpeg  -i "$url" -ss $start_time -to $end_time -y -c copy $filename





