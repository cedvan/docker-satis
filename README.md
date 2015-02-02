# Docker Satis

## Version

Current Version: **1.0.0**

## Installation

```bash
docker pull cedvan/satis:1.0.0
docker run --name satis -d cedvan/satis:1.0.0
```

## Load list of packages

```bash
docker run --name satis -d \
    -v /opt/satis/satis.json:/var/www/satis.json \
    cedvan/satis:1.0.0
```

*cf examples/satis.json

## Load composer configuration

```bash
docker run --name satis -d \
    -v /opt/satis/composer-config.json:/var/www/composer-config.json \
    cedvan/satis:1.0.0
```
*cf examples/composer-config.json

## Save Data

```bash
docker run --name satis -d \
    -v /opt/satis:/var/www \
    cedvan/satis:1.0.0
```