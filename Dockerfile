FROM golang:latest
RUN  git clone https://github.com/skit-ai/hiring.git
WORKDIR $GOPATH/src/hiring/devops-engineer/assignment
COPY hiring/devops-engineer/assignment /usr/local/go/src/main
RUN export GOROOT=/usr/local/go/src/main
RUN  pwd
RUN  ls
EXPOSE 8080
CMD [ "go", "run","main" ] 