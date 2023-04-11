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