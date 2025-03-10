echo off

set filters="-pix_fmt yuv420p10le -vf colorspace=all=bt709:itrc=bt709:fast=0 -color_range 1"
//set filters="-pix_fmt yuv420p -color_primaries bt709 -colorspace fcc -color_trc bt470bg -color_range 2"


//colorspace показ
cls


for %%i in (%*) DO (

"E:\programs\!video_capture\ffmpeg\ffmpeg.exe" -i %%i "%filters%" -an -y %%~ni_1.mp4

)
