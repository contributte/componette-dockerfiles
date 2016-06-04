# Componette - Docker configuration

## Containers

1. data [busybox] 

2. db [mariadb:10.1]

4. php [[componette/php](https://github.com/componette/dockerfiles/blob/master/php)]
    - PHP 7.0
    - Ssmtp
    - Rsyslog
    - Cron

5. nginx [[componette/nginx](https://github.com/componette/dockerfiles/blob/master/nginx)]

6. varnish [[componette/varnish](https://github.com/componette/dockerfiles/blob/master/varnish)]

7. proxy [[componette/proxy](https://github.com/componette/dockerfiles/blob/master/proxy)]

## Bin

There is a script called `Componette Docker Manager`.

```sh
Usage: componette [-h]

Componette Docker Manager.

Version: 1.0

Options:

  -h          Display this help and exit.

Commands:
  up          Start containers.
  build       Build containers.
  reup        Build & Start containers.
  stop        Stop container.
  die         Destroy containers.
  logs        Display logs.
  exec        Exec command in container.
  go          Attach container.
```

You could download it.

```sh
wget https://raw.githubusercontent.com/componette/dockerfiles/master/componette
```

## Install

### Manually

1. Download startup script
2. Download or create `docker-compose.yml`

### Automatic

```sh
wget -O https://raw.githubusercontent.com/componette/dockerfiles/master/componette-installer | bash
```

## Containers

All containers are pretty standalone. You can just download a `docker-compose.yml` and start it.

### Nginx

#### DHE cypher

Nginx has pregenerated 2048b DHE cypher.

If you would like to use your own (on production!), you have to generate it.

```sh
openssl dhparam -outform pem -out dhparam2048.pem 2048 
```

#### SSL

Nginx has a pregenerated self-signed SSL certificates to year 2116.

These certificates are self-signed and chrome does not trust them.

You have to add [this special certificate](https://github.com/componette/dockerfiles/blob/master/proxy/ssl.d/chrome-certificate.der) to chrome certificates manager.

![](https://raw.githubusercontent.com/componette/dockerfiles/master/_doc/chrome.png "Chrome - certificate manager")

1. Settings
2. Manage certificates..
3. Authorities
4. Import

### MariaDB

Update credentials in `docker-compose.yml`.

Defaults:
- user: root/dockerroot
- user: docker/docker
- database: docker

