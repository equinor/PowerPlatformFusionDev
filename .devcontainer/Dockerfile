# https://github.com/microsoft/vscode-dev-containers/blob/v0.245.2/containers/typescript-node/.devcontainer/devcontainer.json
# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 18, 16, 14, 18-bullseye, 16-bullseye, 14-bullseye, 18-buster, 16-buster, 14-buster
ARG VARIANT=16-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:${VARIANT}

## For use in local on-prem instances
# ENV HTTP_PROXY=www-proxy.statoil.no:80
# ENV https_proxy=www-proxy.statoil.no:80

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment if you want to install more global node packages
# RUN su node -c "npm install -g <your-package-list -here>"

# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends \
#    vim

# For additional dotnet functionality 
# Ref: https://learn.microsoft.com/en-us/dotnet/core/install/linux-debian
#
# wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
# sudo dpkg -i packages-microsoft-prod.deb
# rm packages-microsoft-prod.deb
# RUN sudo apt-get update && \
# apt-get -y install --no-install-recommends \
# dotnet-sdk-7.0
