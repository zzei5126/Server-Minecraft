@echo off
title Minecraft Server

echo ===== Pulling from GitHub =====
git pull

echo.
echo ===== Starting Server =====
java -Xms2G -Xmx2G -jar server.jar nogui

echo.
echo ===== Server stopped =====

git add .

git commit -m "Auto save %date% %time%"

git push

echo.
echo Done.
pause