FROM mcr.microsoft.com/vscode/devcontainers/base:0-ubuntu-22.04 as devcontainer

# Update apt and install packages
RUN apt-get update && apt-get -y upgrade

USER vscode

# Install ASDF
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0 && \
  echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc && \
  echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc

# Setup post-start script
USER root

COPY post-start.sh /usr/local/bin/post-start
RUN chmod +x /usr/local/bin/post-start
