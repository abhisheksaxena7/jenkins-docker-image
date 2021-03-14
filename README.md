# Command to run on Mac

* docker run -d -p 8080:8080 -p 4040:4040 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_hme:/var/jenkins_home jenkins_docker

## Other helpful commands

* To build the docker image on local machine with latest tag `docker build --tag latest .`

* To view the logs for the last container using the `docker logs container-id` command. This will help to find out the initial password for Jenkins.

* Install Docker and Docker Pipelines plugins within Jenkins to make sure Jenkins can run Docker jobs.

* List all containers `docker ps -a`

* Kill the container `docker kill id`

* Restart in bash mode `docker exec -it -u root name bash`

* Restart a killed container `docker restart name`
