FROM --platform=linux/386 ubuntu:18.04

RUN apt-get update && apt-get install -y make qemu-system-i386 bc gcc-multilib g++-multilib strace

WORKDIR /proj

COPY . .
