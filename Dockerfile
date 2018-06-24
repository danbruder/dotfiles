FROM ubuntu:16.04

# Locales
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
RUN apt-get update && apt-get install -y locales && locale-gen en_US.UTF-8

# Colors and italics for tmux
COPY xterm-256color-italic.terminfo /root
RUN tic /root/xterm-256color-italic.terminfo
ENV TERM=xterm-256color-italic

# Common packages
RUN apt-get update && apt-get install -y \
      build-essential \
      curl \
      git  \
      iputils-ping \
      jq \
      docker \
      libncurses5-dev \
      libevent-dev \
      net-tools \
      netcat-openbsd \
      silversearcher-ag \
      socat \
      software-properties-common \
      tmux \
      tzdata \
      wget \
      zsh
RUN chsh -s /usr/bin/zsh

# Install tmux
WORKDIR /usr/local/src
RUN wget https://github.com/tmux/tmux/releases/download/2.5/tmux-2.5.tar.gz
RUN tar xzvf tmux-2.5.tar.gz
WORKDIR /usr/local/src/tmux-2.5
RUN ./configure
RUN make 
RUN make install
RUN rm -rf /usr/local/src/tmux*

# install neovim
RUN apt-add-repository ppa:neovim-ppa/stable \
    && apt-get update -y \ 
    && apt-get install neovim -y

# install node
RUN curl -sL https://deb.nodesource.com/setup_10.x | sh \
  && apt-get install nodejs -y


# Install elixir 
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb &&  dpkg -i erlang-solutions_1.0_all.deb \
      && apt-get update -y \
      && apt-get install esl-erlang elixir -y

WORKDIR /root
EXPOSE 3000
EXPOSE 4000
EXPOSE 8000
