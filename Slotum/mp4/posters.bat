echo off

set filters="-pix_fmt yuv420p10le -vf colorspace=all=bt709:itrc=bt709:fast=0 -color_range 1"

if not exist "posters" mkdir posters

for %%i in (%*) DO (


"E:\programs\!video_capture\ffmpeg\ffmpeg.exe" -i %%i -ss 00:00:01 -frames:v 1 "%filters%" -y posters\p%%~ni.jpg

)

more