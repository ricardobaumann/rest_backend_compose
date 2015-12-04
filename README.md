# rest backend compose
Example of a docker compose structure combining
1. Backend rest services
2. Load balancing
3. Dummy Authentication and authorization services

## Setup
1. Install docker (http://docs.docker.com/engine/installation/)
2. Install docker-compose (https://docs.docker.com/compose/install/)
3. On the root folder, run <strong>docker-compose up</strong>

## Usage
1. To update containers, run


sudo docker exec -t backenddockercompose_ranking_1 ps aux | grep 'unicorn' | awk '{print $2}' | xargs sudo kill -QUIT

sudo docker-compose rm ranking

sudo docker-compose build ranking

sudo docker-compose up ranking

and so on for the other containers
