FROM ubuntu:16.04
MAINTAINER Dave English, Andy Dwelly, Tim Holbrook, Marcus Cumming, Matt Gardener

# Update the APT cache
RUN sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install and setup project dependencies
RUN apt-get install -y curl wget

#install editors
RUN apt-get install -y vim nano

#install mongo
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list
RUN apt-get update
RUN apt-get install -y mongodb-org
RUN mkdir -p /data/db
RUN chmod ugo+w /data/db
RUN /usr/bin/mongod &
EXPOSE 27017

#set up the entry point script
ADD entry.sh /entry.sh
RUN chmod +x /entry.sh

#Start the container
ENTRYPOINT ["/entry.sh"]
