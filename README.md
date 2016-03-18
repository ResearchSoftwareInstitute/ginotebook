# ginotebook

---

## Running GINotebook

A new installation would first require the cloning of the GINotebook repository. In this example the user name is **ginotebook** with the home location as `/home/ginotebook/`.

```bash
$ git clone https://github.com/ResearchSoftwareInstitute/ginotebook.git
Cloning into 'ginotebook'...
remote: Counting objects: 329, done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 329 (delta 0), reused 0 (delta 0), pack-reused 325
Receiving objects: 100% (329/329), 22.08 MiB | 27.08 MiB/s, done.
Resolving deltas: 100% (163/163), done.
Checking connectivity... done.
$ cd ginotebook
```
The developer should base any work they do from the develop branch as follows.

```bash
$ git checkout develop
Branch develop set up to track remote branch develop from origin.
Switched to a new branch 'develop'
$ git checkout -b my-development-branch
Switched to a new branch 'my-development-branch'
```

Build sshd_base Docker image.

```bash
cd sshd_base && docker build -t sshd_base . && cd -
```

At this point the developer could deploy the base GINotebook code in hydrodev using the `ginbctl` script.

```bash
$ ./ginbctl deploy
*** DEPLOY ***
...
*** manage.py migrate ***
Operations to perform:
  Synchronize unmigrated apps: rest_framework, gis, staticfiles, messages, rest_framework_gis, corsheaders
  Apply all migrations: authtoken, sessions, admin, auth, contenttypes, gidb
Synchronizing apps without migrations:
  Creating tables...
    Running deferred SQL...
  Installing custom SQL...
Running migrations:
  No migrations to apply.
```

When the build is finished the developer would be able to access the running GINotebook site at [http://localhost:8000/](http://localhost:8000/)

A single administrative user is included with the deployment.

- username: **admin**
- password: **default**

### ginbctl

The supplied GINotebook Control script named `ginbctl` has been created to provide the most common deployment methods that a developer would use.

```bash
$ ./ginbctl --help
*** GINotebook Control Script ***
usage: ./ginbctl deploy      # deletes all database and container contents and deploys from scratch
usage: ./ginbctl loaddb      # loads database specified in ginotebook-config.yaml into running container
usage: ./ginbctl loadmedia   # loads media directory specified in ginotebook-config.yaml into running container
usage: ./ginbctl rebuild     # deletes ginotebook container contents only and deploys using exsiting database
usage: ./ginbctl restart     # restarts the ginotebook container without rebuilding
usage: ./ginbctl start       # attempts to start all containers
usage: ./ginbctl stop        # stops all running containers
```

Functionality

- **deploy:** Fully stops, removes and deletes any prior GINotebook docker containers, images and database contents prior to installing a clean copy of the GINotebook codebase as defined in the `GINotebook-config.yaml` file
- **loaddb:** Deletes existing database and reloads the database specified in the `ginotebook-config.yaml` file.
- **loadmedia:** Loads media archive into the running environment as specified in the `ginotebook-config.yaml` file.
- **rebuild:** Stops, removes and deletes only the ginotebook docker containers and images while retaining the database contents on the subsequent build as defined in the `ginotebook-config.yaml` file
- **restart:** Restarts the django server only (and nginx if applicable).
- **start:** Starts all containers as defined in the `docker-compose.yml` file (and nginx if applicable).
- **stop:** Stops all containers as defined in the `docker-compose.yml` file.

### ginotebook-config.yaml

Located at `config/ginotebook-config.yaml` this file defines the local development environment and how the application should be run.

```yaml
### Local Configuration Variables ###
GINB_PATH: /home/ginotebook/ginotebook
GINB_BACKUP_DIR: /home/ginotebook/ginotebook/files
GINB_DATABASE: pg.ginotebook.sql
GINB_MEDIA: media.ginotebook.tar.gz

### Deployment Options ###
USE_NGINX: false
USE_SSL: false

### nginx Configuration Variables ###
FQDN_OR_IP: localhost
NGINX_DIR: /home/ginotebook/ginotebook/nginx

### SSL Configuration Variables ###
SSL_HOST_DIR: /home/ginotebook/hs-certs
SSL_CERT_DIR: /home/ginotebook/ginotebook/nginx/cert-files
SSL_CERT_FILE: ginotebook.renci.org-self.cert
SSL_KEY_FILE: ginotebook.renci.org-self.key
```

Meaning of each entry:

**Local Configuration Variables**

- GINB_PATH: Location of the ginotebook repository in development environment (default is `/home/ginotebook/ginotebook`)
- GINB_BACKUP_DIR: Location of the ginotebook backup files in development environment (default is `/home/ginotebook/ginotebook/files`)
- GINB_DATABASE: Which database to use for **deploy** or **loaddb** calls (default is `pg.ginotebook.sql`)
- GINB_MEDIA: Which media archive to use for **deploy** or **loadmedia** calls (default is `media.ginotebook.tar.gz`)

**Deployment Options**

- USE_NGINX: Use ngninx server to serve ginotebook files **true** or **false** (default is `false`)
- USE_SSL: Use SSL certificates to serve ginotebook application **true** or **false** (default is `false`)

**nginx Configuration Variables**

- FQDN_OR_IP: Fully Qualified Domain Name or IP Address of where the ginotebook application is served at (default is `localhost`)
- NGINX_DIR: Location of the nginx directory in development environment (default is `/home/ginotebook/ginotebook/nginx`)

**SSL Configuration Variables**

- SSL_HOST_DIR: Location of the certificate files directory on the host (default is `/home/ginotebook/hs-certs`)
- SSL_CERT_DIR: Location of the self generated SSL certificate files directory in development environment (default is `/home/ginotebook/ginotebook/nginx/cert-files`)
- SSL_CERT_FILE: SSL cert file name (default is `ginotebook.renci.org-self.cert`)
- SSL_KEY_FILE: SSL key file name (default is `ginotebook.renci.org-self.key`)
