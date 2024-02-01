## Jellydator Flapjack Dockerfile

This repository contains **Dockerfile** of Flapjack, Jellydator's market 
analysis and strategy execution engine. The image is automatically 
published to the public [GitHub Packages](https://docs.github.com/en/packages) 
registry every time a new version of Flapjack comes out.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download the Flapjack image from the public 
[GitHub Packages registry](https://github.com/jellydator/flapjack-docker/pkgs/container/flapjack): 
`docker pull ghcr.io/jellydator/flapjack`

### Usage
```
docker run -it --rm -p 8985:8985 ghcr.io/jellydator/flapjack
```
