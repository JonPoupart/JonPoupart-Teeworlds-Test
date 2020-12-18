#BASE IMAGE#
FROM ubuntu:20.04

#-----NETWORK STUFF-----#
#This tells US what port we want
#ENV port 8303

#-----OS STUFF-----#
#Updates our OS
RUN apt-get update
#Installs teeworlds-server
RUN apt-get install -y teeworlds-server pwgen

#-----FILES AND DIRECTORIES-----#
#DATADIR - This is where the configs go
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#-----BETA-----#
COPY /data/DanS1VM1.cfg /usr/share/games/teeworlds/data/DanS1VM1.cfg
COPY /data/TW_secretproject.cfg /usr/share/games/teeworlds/data/TW_secretproject.cfg
COPY /data/TW_Hyperspeed.cfg /usr/share/games/teeworlds/data/TW_Hyperspeed.cfg
COPY /data/TW_SloMo.cfg /usr/share/games/teeworlds/data/TW_SloMo.cfg
COPY /data/JR_speeeeed.cfg /usr/share/games/teeworlds/data/JR_speeeeed.cfg
COPY /data/JR_Lowgravity.cfg /usr/share/games/teeworlds/data/JR_Lowgravity.cfg
COPY /data/rfinal.cfg /usr/share/games/teeworlds/data/rfinal.cfg
COPY /data/Remy_grav.cfg /usr/share/games/teeworlds/data/Remy_grav.cfg
#-----ALPHA-----#
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /data/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#USERDIR - This is where the maps go
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#-----BETA-----#
COPY /USERDIR/Teeworlds/maps/DanMap1.map /root/.local/share/teeworlds/maps/DanMap1.map
COPY /USERDIR/Teeworlds/maps/TrevDesertFinal.map /root/.local/share/teeworlds/maps/TrevDesertFinal.map
COPY /USERDIR/Teeworlds/maps/TrevDesertFinalSP.map /root/.local/share/teeworlds/maps/TrevDesertFinalSP.map
COPY /USERDIR/Teeworlds/maps/skyislands.map /root/.local/share/teeworlds/maps/skyislands.map
COPY /USERDIR/Teeworlds/maps/sweatynerd.map /root/.local/share/teeworlds/maps/sweatynerd.map
#-----ALPHA-----#
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /USERDIR/Teeworlds/maps/xxx.map /root/.local/share/teeworlds/maps/xxx.map

#-----MISC RUNS-----#
#This tells the container what port we want
EXPOSE 8303-8310/udp

