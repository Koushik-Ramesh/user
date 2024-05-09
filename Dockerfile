FROM        node:18
RUN         useradd roboshop
WORKDIR     /home/roboshop
COPY        node_modules/ node_modules/
COPY        server.js .
COPY        package.json package.json .
# Ensure DocDB KEY is supplied
# COPY        global.pem  /home/roboshop/global.pem
ENTRYPOINT  ["node" , "server.js"]  