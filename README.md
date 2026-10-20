# golang

[![Docker Image CI](https://github.com/chinayin-docker/debian/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/chinayin-docker/golang/actions/workflows/ci.yml)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/golang?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/golang?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/golang)

Build simple, secure, scalable systems with Go.

### Image Variants

- `chinayin/golang:<version>`
- `chinayin/golang:<version>-alpine`
- `chinayin/golang:<version>-ci`

> `1.25` is end-of-life and is no longer rebuilt by CI (last published: `1.25.14`).
> Supported minors: `1.26`, `1.27`.

### Usage

You can use the image directly, e.g.

```bash
docker run --rm -it chinayin/golang:1.27.3
docker run --rm -it chinayin/golang:1.27

docker run --rm -it chinayin/golang:1.27.3-alpine
docker run --rm -it chinayin/golang:1.27-alpine

docker run --rm -it chinayin/golang:1.27.3-ci
docker run --rm -it chinayin/golang:1.27-ci
```

The images are built daily and have the security release enabled, so will contain any security updates released more
than 24 hours ago.

You can also use the images as a base for your own Dockerfile:

```bash
FROM chinayin/golang:1.27.3
FROM chinayin/golang:1.27
FROM chinayin/golang:1.27.3-alpine
FROM chinayin/golang:1.27-alpine
```
