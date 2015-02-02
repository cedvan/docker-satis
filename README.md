# Docker Satis

## Installation

```bash
docker pull cedvan/satis:latest
docker run --name satis -d cedvan/satis:latest
```

## Load packages

Download packages from pakagist will start automatically at start container and every hour

```bash
docker run --name satis -d \
    -v /opt/satis/satis.json:/var/www/satis.json \
    cedvan/satis:latest
```
*cf examples/satis.json*

## Load composer configuration

```bash
docker run --name satis -d \
    -v /opt/satis/composer-config.json:/var/www/composer-config.json \
    cedvan/satis:latest
```
*cf examples/composer-config.json*

## Save Data

```bash
docker run --name satis -d \
    -v /opt/satis:/var/www \
    cedvan/satis:latest
```