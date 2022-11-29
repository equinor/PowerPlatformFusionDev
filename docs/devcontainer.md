# Devcontainer

## Extensions

See [devcontainer.json](../.devcontainer/devcontainer.json) for extensions installed by default.

### Enabled features

Note that additional extensions may be installed depending on the enabled features and parameters.
See the "Features" section of [devcontainer.json](../.devcontainer/devcontainer.json).

## Power Platform Tools

The tools depends on asp .net core runtime. See relevant run in [Dockerfile](../.devcontainer/Dockerfile).

## Using the devcontainer

## Codespace

Deploy as is in github codespaces.

## Dev Container

To build and run the container locally you need to have docker installed.

### VSCode

See documentation on building and running the container with the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.

> **TL;DR** try: `[CTRL]+[SHIFT]+[p]` -> search for: `Dev Containers: Rebuild container` -> `[Enter]`
>
> **Note**: You may encounter certificates errors during build when on-prem networks where proxy settings are required.
