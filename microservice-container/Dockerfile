FROM ubuntu:16.04
MAINTAINER Dave English, Andy Dwelly, Tim Holbrook, Marcus Cumming, Matt Gardener

# Update the APT cache
RUN sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install and setup project dependencies
RUN apt-get install -y curl wget

#prepare for Java download
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

#grab oracle java (auto accept licence)
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer

#install editors
RUN apt-get install -y vim nano

#set up the entry point script
ADD entry.sh /entry.sh
RUN chmod +x /entry.sh

RUN wget https://bintray.com/hmrc/release-candidates/download_file?file_path=uk%2Fgov%2Fhmrc%2Fhelp-to-save-stub_2.11%2F0.11.0-1-gf539051%2Fhelp-to-save-stub_2.11-0.11.0-1-gf539051.tgz
RUN mkdir /fatjar
RUN tar xf *.tgz -C /fatjar
RUN mv /fatjar/help-to-save-stub* /fatjar/help-to-save-stub
EXPOSE 7002

#Start the container
ENTRYPOINT ["/entry.sh"]
