@echo off

cd\
cd C:\Users\382985\Documents\GitHub\Singleplayer-Level\Jungle_Swamp\working


echo Copying Files...
copy C:\Users\382985\Documents\GitHub\Singleplayer-Level\Jungle_Swamp\id1\maps\Sleepy_Swamp.map C:\Users\382985\Documents\GitHub\Singleplayer-Level\Jungle_Swamp\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeDev\tools\ericw-tools\bin\qbsp.exe Sleepy_Swamp

echo --------------VIS---------------
C:\QuakeDev\tools\ericw-tools\bin\vis.exe Sleepy_Swamp

echo -------------LIGHT--------------
C:\QuakeDev\tools\ericw-tools\bin\light.exe -soft -extra4 Sleepy_Swamp

copy Sleepy_Swamp.bsp C:\Users\382985\Documents\GitHub\Singleplayer-Level\Jungle_Swamp\id1\maps
copy Sleepy_Swamp.pts C:\Users\382985\Documents\GitHub\Singleplayer-Level\Jungle_Swamp\id1\maps
copy Sleepy_Swamp.lit C:\Users\382985\Documents\GitHub\Singleplayer-Level\Jungle_Swamp\id1\maps
cd\
cd C:\Users\382985\Documents\GitHub\Singleplayer-Level\Jungle_Swamp
quakespasm-spiked-win64  +map Sleepy_Swamp
