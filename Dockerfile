# set base image, minimal python
FROM python:alpine

# set working directory environment
ENV DockerHome=/home/task_manager

# create the home directory
RUN mkdir -p $DockerHome

# set python environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set working directory
WORKDIR $DockerHome

# install dependencies, python
RUN apk add --update py3-pip

# copy program files to the working directory
COPY . $DockerHome

# run the application
CMD ["python", "task_manager.py", "0.0.0.0:8080"]