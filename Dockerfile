FROM debian:10
LABEL "maintainer"="FreeHackQuest Team <freehackquest@gmail.com>"
LABEL "repository"="https://github.com/freehackquest/debian-10-cpp-build"

RUN apt-get -y update 
RUN apt-get install -y \
    make cmake \
    g++ \
    pkg-config \
    libcurl4-openssl-dev \
    zlibc zlib1g zlib1g-dev \
    libpng-dev \
    default-libmysqlclient-dev

# Fix for building on debian system (mysqlclient library)
# RUN ln -s /usr/lib/x86_64-linux-gnu/pkgconfig/mariadb.pc /usr/lib/x86_64-linux-gnu/pkgconfig/mysqlclient.pc