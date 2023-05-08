<p align="center">
  <img src="https://raw.githubusercontent.com/filebrowser/logo/master/banner.png" width="550"/>
</p>

# [Filebrowser](https://github.com/filebrowser/filebrowser) inside an [OpenShift container](https://hub.docker.com/r/johnibm/filebrowser)

[![Latest Github release](https://img.shields.io/github/release/hurlenko/filebrowser-docker.svg)](https://github.com/hurlenko/filebrowser-docker/releases/latest)
[![Image size](https://img.shields.io/docker/image-size/hurlenko/aria2-ariang/latest)](https://hub.docker.com/r/hurlenko/filebrowser)
[![Docker Pulls](https://img.shields.io/docker/pulls/hurlenko/filebrowser.svg)](https://hub.docker.com/r/hurlenko/filebrowser/)
[![Docker Stars](https://img.shields.io/docker/stars/hurlenko/filebrowser.svg)](https://hub.docker.com/r/hurlenko/filebrowser/)

## Introduction
Filebrowser implementation from https://github.com/hurlenko/filebrowser-docker modified for OpenShift
## Table of Contents

- [Screenshots](#screenshots)
- [Features](#features)
- [Usage](#usage)
  - [OpenShift](#openshift)  
  - [Ports desription](#ports-description)
  - [Supported environment variables](#supported-environment-variables)
  - [Supported volumes](#supported-volumes)  

## Screenshots

### Desktop

![Preview](https://user-images.githubusercontent.com/5447088/50716739-ebd26700-107a-11e9-9817-14230c53efd2.gif)

### Mobile device

| | |
|---|---|
![Preview](https://user-images.githubusercontent.com/18035960/67269128-c7873000-f4be-11e9-89be-1fe33c3e973c.png) | 

## Features

- Confgurable via environment variables
- Can be run using different user
- Supports multiple architectures, tested on Ubuntu 18.04 (`amd64`), Rock64 🍍 (`arm64`) and Raspberry Pi 🍓 (`arm32`)

## Usage

### Ports description

- `8080` - default filebrowser port

### Supported environment variables

The environment variables are prefixed by `FB_` followed by the option name in caps. So to set "database" via an env variable, you should set FB_DATABASE. The list of avalable options can be [found here](https://filebrowser.org/cli/filebrowser#options).

### Supported volumes

- `/srv/filebrowser/data` - Data directory to browse
- `/srv/filebrowser/config` - `filebrowser.db` location

### OpenShift

1. git clone https://github.com/JohnIBM/filebrowser-openshift.git
2. cd filebrowser-openshift
3. Modify filebrowser.yaml as desired
4. Create the deployment:
```bash
oc create -f filebrowser.yaml
```
