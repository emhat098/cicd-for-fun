### Start docker in the background

```bash
$ sudo docker-compose -f docker-compose.yml -d
OR
$ sudo docker-compose up -d
```

### Stop docker container

```bash
$ sudo docker-compose down
```

### Remove all containers
```bash
$ sudo docker container ls -a
$ sudo docker rm -vf $(sudo docker ps -a -q)
```

### Remove all images
```bash
$ sudo docker image ls -a
$ sudo docker rmi -f $(sudo docker images -a -q)
```

### Remove all volumes
```bash
$ sudo docker volume ls
$ sudo docker volume rm $(sudo docker volume ls -q)
```