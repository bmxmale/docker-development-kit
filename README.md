# Docker development kit

DDK is set of tools that allow you to easy and fast setup local development env.

#### Setup

##### Step 1 - Create network

```bash
./bin/createNetwork.sh
```

##### Step 2 - Init MySQL files
```bash
./bin/initializeMySQL.sh
```

##### Step 3 - Run DDK
```bash
docker-compose up -d
```

##### Now you have setup docker environment with:
- [Traefik] > http://traefik.udviklet.dk
- [Portainer] > http://portainer.udviklet.dk
- [MailHog] > http://mailhog.udviklet.dk

#### Example app 

##### Magento 2

```bash
git clone git@github.com:magento/magento2.git app/magento2
```

```bash
docker-compose -f example-magento2.yml up -d
```

_NOTICE! Setup from web often freeze, better way is use CLI to setup magento :)_

```bash
php bin/magento setup:install \
        --base-url='http://magento.udviklet.dk/' \
        --db-host='MySQL' \
        --db-name='development'  \
        --db-user='development' \
        --db-password='development' \
        --admin-firstname='Admin' \
        --admin-lastname='Admin' \
        --admin-email='magento@udviklet.dk' \
        --admin-user='development'  \
        --admin-password='development' \
        --language='en_US' \
        --currency='USD' \
        --timezone='Europe/Warsaw' \
        --use-rewrites=1 \
        --backend-frontname='backend'
```

##### Symfony 4

```bash
composer create-project symfony/skeleton app/symfony4
```

```bash
docker-compose -f example-symfony4.yml up -d
```

[Traefik]: https://github.com/containous/traefik#overview
[MailHog]: https://github.com/mailhog/MailHog
[Portainer]: https://github.com/portainer/portainer