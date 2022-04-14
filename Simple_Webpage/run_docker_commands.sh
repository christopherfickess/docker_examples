#!/bin/bash
docker_initialize()
{
    #You can now create a docker image with these files. To create a Docker image run:
    #sudo docker build -t img-static-site-example .
    #Use this docker image to launch a new container on your system. To run your Docker container using the newly created image, type:
    #sudo docker run -it -d -p 80:80 img-static-site-example

    #in case the port 80 is occupied by the host machine or any other docker container. You can change the host machine port to something else.
    #docker run -it -d -p 8080:80 img-php-apache-example

    #This will create a docker image with the help of Dockerfile available in current directory.
    sudo docker-compose build

    #Then run your docker container using the following command.
    sudo docker-compose up -d

    #You can rebuild image and recreate your container any time by running these two commands.
    #docker-compose build
    #docker-compose up -d
}

docker_kill_all()
{
    container=$(sudo docker ps -q)
    if [ ! -z $containers ]; then
        sudo docker kill $containers;
    fi
}
