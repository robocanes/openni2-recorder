#!/bin/bash

if [ $# -lt 2 ]; then
  echo "usage: ./run <director> <video_prefix>"
  exit 1
fi

echo "width = 640" > config.ini
echo "height = 480" >> config.ini
echo >> config.ini
echo "directory = $1" >> config.ini
echo >> config.ini
echo "screenshot_color_name = $2_color.jpg" >> config.ini
echo "screenshot_depth_name = $2_depth.jpg" >> config.ini
echo "video_color_name = $2_color.avi" >> config.ini
echo "video_depth_name = $2_depth.avi" >> config.ini

./build/recorder

exit 0
