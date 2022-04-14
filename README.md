Navigate to the Simple_Website folder and run the following commands in a terminal

This will initialize the starting docker container for the nginx template
   `source run_docker_commands.sh && docker_initialize`

This will initialize the starting docker container using docker_compose for the nginx template
   `source run_docker_commands.sh && docker_compose_init`

This will kill all running docker containers:
   `source run_docker_commands.sh && docker_kill_all`

To commit docker images run the following commands
   `docker container ls`                  #get the name of the IMAGE
   `docker tag IMAGE REPO/PATH:/TAGNAME`  #Example docker tag img-static-site-example cfickess20/sample_http:version1.0
   `docker login`
   `docker push REPO/PATH:TAGNAME`        #docker push cfickess20/sample_http:version1.0