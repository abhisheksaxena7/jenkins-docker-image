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

## Troubleshooting

If you get the following error:

    `Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json: dial unix /var/run/docker.sock: connect: permission denied`

Open CLI for your Docker Container by running:

    `docker exec -it <Container-ID> /bin/sh`
    
And see if you can replicate the error by running `docker ps`. If you see the error then run

    `sudo chmod 777 /var/run/docker.sock`

in the container and use the password 'jenkins'. After this, try running `docker ps` again and it should work.

Read [stack overflow](https://askubuntu.com/questions/1194205/why-var-run-docker-sock-permissions-are-changed-every-time-i-log-out-how-can-i) to understand why its needed.
    
