@echo off
cd "../dependencies/astron/"
title Toontown Astron
mode con: cols=60 lines=20

:start
astrond --loglevel info config/production-cluster.yml
PAUSE
goto start