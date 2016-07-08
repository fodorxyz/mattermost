set -x

cd /tmp/
git clone https://github.com/mattermost/mattermost-docker.git
cd mattermost-docker
docker-compose build
docker-compose up -d
