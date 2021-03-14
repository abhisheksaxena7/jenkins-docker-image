# Command to run on Mac

* docker run -d -p 8080:8080 -p 4040:4040 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_hme:/var/jenkins_home jenkins_docker

## Other helpful commands

* build the docker image on local machine with latest tag `docker build --tag latest .`

* List all containers `docker ps -a`

* kill the container `docker kill id`

* restart in bash mode `docker exec -it -u root name bash`

* restart a killed container `docker restart name`
