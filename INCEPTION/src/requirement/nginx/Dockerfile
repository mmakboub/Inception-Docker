FROM debian:buster

RUN : apt-get update && apt-get install -y nginx openssl
RUN : apt-get install -y nginx 
RUN : apt-get install -y openssl
RUN : 
# L'option -y utilisée avec la commande apt-get install dans un Dockerfile indique à la commande de répondre automatiquement "oui" à toutes les questions de confirmation qui pourraient être posées lors de l'installation des paquets.

COPY : ./conf/nginx.conf  /etc/nginx/nginx.conf 
#  le fichier nginx.conf est situé dans le répertoire local ./conf/ (par rapport à la position du Dockerfile). Lorsque vous exécutez l'instruction COPY, le fichier nginx.conf sera copié depuis votre système hôte (le répertoire local ./conf/) vers le chemin spécifié /etc/nginx/nginx.conf à l'intérieur du conteneur Docker.

EXPOSE : 443

CMD ["nginx", "-g", "daemon off;"]

# Debian Buster, en revanche, est une distribution Linux plus générale et polyvalente, adaptée à un large éventail d utilisations, y compris les conteneurs. Elle offre une grande variété de paquets et de fonctionnalités, ce qui peut être avantageux si vous avez besoin de personnaliser votre image avec des dépendances spécifiques ou des configurations plus complexes.