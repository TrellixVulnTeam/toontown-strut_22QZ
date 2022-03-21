@echo off
cd "../dependencies/astron/"
title Toontown Strut Astron

:start
astrond --loglevel info config/cluster.yml
goto start