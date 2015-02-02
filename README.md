# Docker Satis

## Quick start

```bash
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

Add token github is necessary to avoid blocking github

```bash
docker run --name satis -d \
    -v /opt/satis/composer-config.json:/var/www/composer-config.json \
    cedvan/satis:latest
```
*cf examples/composer-config.json*

**Generate your github token :**

- Go Settings => Applications
- Click on "Generate token"
- Enter "satis" to token descriptin
- Just checked "repo" and "public_repo"
- Click on "Generate"
- Copy token in "composer-config.json"
- Finished !

## Save Data

```bash
docker run --name satis -d \
    -v /opt/satis:/var/www \
    cedvan/satis:latest
```

## Enabled HTTPS

```bash
docker run --name satis -d \
    -e "SATIS_HTTPS=true" \
    -v /opt/satis/certs:/var/www/certs \
    cedvan/satis:latest
```
*add satis.key and satis.crt in folder certs*
