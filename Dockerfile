#DANS1VM1#
FROM ubuntu:20.04

#-----NETWORK STUFF-----#
#This tells US what port we want
ENV port 8303

#-----OS STUFF-----#
#Updates our OS
RUN apt-get update
#Installs teeworlds-server
RUN apt-get install -y teeworlds-server pwgen

#-----FILES AND DIRECTORIES-----#
#run.sh - when this is run, it tells teeworlds-server to run a config
COPY run.sh /run.sh
#DATADIR - This is where the configs go
#COPY /data /usr/share/games/teeworlds/data
COPY /data/DanS1VM1.cfg /usr/share/games/teeworlds/data/DanS1VM1.cfg
#USERDIR - This is where the maps go
#COPY /USERDIR/Teeworlds /root/.local/share/teeworlds
COPY /USERDIR/Teeworlds/maps/DanMap1.map /root/.local/share/teeworlds/maps/DanMap1.map

#-----MISC RUNS-----#
#Changes permissions on the run.sh file? I'm not sure yet
#RUN chmod +x /run.sh
#This tells the container what port we want
EXPOSE 8303/udp

#-----CONTAINER COMMAND-----#
#Runs the run.sh file
CMD ["/run.sh"]  
#CMD ["cd /home"]
