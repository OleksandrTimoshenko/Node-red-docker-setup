## Preliminary requirements
- host
- git
- docker
- docker-compose
```
scp -i ./path/to/key.pem user@ip ./install-requirements.sh ~/install-requirements.sh
ssh user@ip -i ./path/to/key.pem
chmod +x ./install-requirements.sh
./install-requirements.sh
sudo reboot
docker --version
docker-compose --version
docker run hello-world
```

## Start Node Red
```
git clone git@github.com:OleksandrTimoshenko/Node-red-docker-setup.git
cp node-red.env_example node-red.env
docker-compose up -d
```

## Get Node-Red docker container logs
docker-compose logs

## Create a new password for the dashboard user
```
docker ps
docker exec -it -u root <container_ID>  bash
node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" your-password-here
update node-red.env file in your local
docker-compose down && docker-compose up -d
```

## Arduino module install
[Module](https://nodered.org/docs/faq/interacting-with-arduino)  
[Example](https://www.youtube.com/watch?v=ryEFNy1E_LU)  

## Arduino + AWS IOT + Node Red connect
1. Connect Arduino to AWS IOT device [link](https://www.youtube.com/watch?v=idf-gGXvIu4)  
2. Connect local (or not local) Node Red with IOT device in AWS [link](https://www.youtube.com/watch?v=xhRlh61xUqE)  

## Another usefull links
Connect Arduino to local Node Red [link](https://www.ee-diary.com/2022/07/node-red-with-arduino-simple-example.html)  
Usefull [channel](https://www.youtube.com/watch?v=xhRlh61xUqE)   
