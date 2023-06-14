# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Alpine version: 3.16, 3.15, 3.14, 3.13
ARG VARIANT=3.16
FROM --platform=linux/amd64 mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.

## For use in local on-prem instances
# ENV HTTP_PROXY=www-proxy.statoil.no:80
# ENV https_proxy=www-proxy.statoil.no:80

# [Optional] Uncomment this section to install additional OS packages.

RUN apk update && \
   apk add \
   graphviz \
   plantuml \
   dotnet6 \
   dotnet6-sdk \
   dotnet-apphost-pack-6.0 \
   dotnet-host \
   npm \
   libc6-compat \
   python3 \
   py3-pip \
   ttf-dejavu