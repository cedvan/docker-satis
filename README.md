# Docker Satis

## Quick start

Download packages from pakagist will start automatically at start container and every hour

```bash
docker run --name satis -d \
    -p 8080:80 \
    -v /opt/satis/satis.json:/var/www/satis.json \
    cedvan/satis:latest
```
*cf examples/satis.json*

*index.html* is generated at the end of download packages. So wait for the download to finish first (use ```docker logs satis``` for monitor progress). Next go to localhost:8080

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
- Click on **Generate token**
- Enter **satis** to token descriptin
- Just checked **repo** and **public_repo**
- Click on **Generate**
- Copy token in **composer-config.json**
- Finished !

## Save data mirror packages

```bash
docker run --name satis -d \
    -v /opt/satis:/var/www \
    cedvan/satis:latest
```

## Enabled HTTPS

```bash
docker run --name satis -d \
    -p 8443:443
    -e "SATIS_HTTPS=true" \
    -v /opt/satis/certs:/var/www/certs \
    cedvan/satis:latest
```
Add **satis.key** and **satis.crt** in folder **certs**

## Enabled SSH Key

```bash
docker run --name satis -d \
    -v ~/.ssh:/root/.ssh \
    cedvan/satis:latest
```


