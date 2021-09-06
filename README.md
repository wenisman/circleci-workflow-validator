# CircleCI 2 visualisation

build the docker container 

```
docker build -t circleci-visualiser .

docker run -p 8080:8080 circleci-visualiser -d
```
