# skitassignment


DOCKERFILE 

//Base image for the application
FROM golang:latest
// CLONING THE BELOW REPO ,HENCE WE HAVE OUR main.go INSIDE THIS REPO
RUN  git clone https://github.com/skit-ai/hiring.git
WORKDIR $GOPATH/src/hiring/devops-engineer/assignment
COPY hiring/devops-engineer/assignment /usr/local/go/src/main
RUN export GOROOT=/usr/local/go/src/main
RUN  pwd
RUN  ls
EXPOSE 8080
CMD [ "go", "run","main" ] 

TO BUILD THIS DOCKERFILE:
 
docker build [OPTIONS] PATH | URL | -
TO PUSH THE BUILDED IMAGE TO THE REPOSITORY :

First save the new image by finding the container ID:
              docker container commit c16378f943fe app:latest
              
Now, push the image to the registry using the image ID:
             docker image tag app:latest 
             docker image push <repo:tag>


