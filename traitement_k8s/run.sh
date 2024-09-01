#!/bin/sh
# Le conteneur est créé par docker compose avec le nom du répertoire + le nom du service
# traitement_k8s-traitement-1 
# $ docker compose up
# $ docker exec  traitement_k8s-traitement-1 /bin/sh /opt/programme/traitement/run.sh 1010
# 
echo -----------------$1----------------- >> /home/traitement/log.txt 
date >> /home/traitement/log.txt 
