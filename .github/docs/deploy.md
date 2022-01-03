# Deployment steps

## Installation

### Running local Docker

```bash
git clone git@github.com:Memocracy/headless-cms.git --branch develop
cd ./headless-cms
./app/deploy.sh
docker-compose up
```

And voilà you have running [wp-admin](http://localhost:8000/) and [phpMyAdmin](http://localhost:8080/).

### Running production server

```bash
git clone https://github.com/Memocracy/headless-cms.git --branch main
```