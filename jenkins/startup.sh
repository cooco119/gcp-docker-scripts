#!/bin/sh
# Before executing, login to dockerhub with markman0510
docker pull markman0510/jenkins-docker
docker run -p 8080:8080 -p 50000:50000 --name=jenkins-master-1 --mount source=jenkins-log,target=/var/log/jenkins --mount source=jenkins-data,target=/var/jenkins_home -d -v /var/run/docker.sock:/var/run/docker.sock -u root --restart always jenkins-machine-docker
