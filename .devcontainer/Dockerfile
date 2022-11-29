# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

## For use in local instances
# ENV HTTP_PROXY=www-proxy.statoil.no:80 
# ENV https_proxy=www-proxy.statoil.no:80

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
   # aspnetcore-runtime-6.0=6.0.8-1 dotnet-apphost-pack-6.0=6.0.8-1 dotnet-host=6.0.8-1 dotnet-hostfxr-6.0=6.0.8-1 dotnet-runtime-6.0=6.0.8-1 dotnet-sdk-6.0=6.0.400-1 dotnet-targeting-pack-6.0=6.0.8-1 vim\
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
   && apt-get -y install --no-install-recommends \
   graphviz \
   plantuml \
   vim
RUN wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
   && sudo dpkg -i packages-microsoft-prod.deb \
   && rm packages-microsoft-prod.deb
RUN apt-get update && apt-get -y install --allow-downgrades \
   aspnetcore-runtime-6.0=6.0.8-1 \
   dotnet-apphost-pack-6.0=6.0.8-1 \
   dotnet-host=6.0.8-1 \
   dotnet-hostfxr-6.0=6.0.8-1 \
   dotnet-runtime-6.0=6.0.8-1 \
   dotnet-sdk-6.0=6.0.400-1 \
   dotnet-targeting-pack-6.0=6.0.8-1
RUN pip3 install --user paconn