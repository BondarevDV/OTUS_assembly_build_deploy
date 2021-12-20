FROM gcc:9.3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y cmake libgtest-dev libboost-test-dev  libspdlog-dev && rm -rf /var/lib/apt/lists/*

CMD ["cmake"]
