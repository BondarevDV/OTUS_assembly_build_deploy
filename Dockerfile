# Сборка ---------------------------------------

# our local base image
FROM ubuntu:20.04 

LABEL description="Container for C++ build" 

# install build dependencies 
RUN apt-get update
RUN apt-get install -y rsync zip openssh-server  && \ 
    apt-get install -y build-essential apt-utils cmake  libboost-test-dev libspdlog-dev && \
    apt-get install -y byobu curl git htop man unzip vim wget
# configure SSH for communication with Visual Studio 
RUN mkdir -p /var/run/sshd

RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && \ 
   ssh-keygen -A 

# expose port 22 

EXPOSE 22

# Скопируем директорию /src в контейнер
ADD ./src /app/src

# Установим рабочую директорию для сборки проекта
WORKDIR /app/build

# Выполним сборку нашего проекта, а также его тестирование
RUN cmake ./src && \
    cmake --build . && \
    cmake --build . --target test && \
    cmake --build . --target package


