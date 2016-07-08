set -x

curl -L https://github.com/docker/compose/releases/download/1.8.0-rc2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

cd /tmp/
git clone https://github.com/mattermost/mattermost-docker.git
cd mattermost-docker
docker-compose build
docker-compose up -d
