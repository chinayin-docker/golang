variable "version" {
  default = ""
}

variable "minor" {
  default = ""
}

variable "goreleaser_ver" {
  default = "v2.13.1"
}

variable "golangci_lint_ver" {
  default = "v2.7.2"
}

variable "repo" {
  default = "chinayin/golang"
}

group "default" {
  targets = []
}

function "platforms" {
  params = []
  result = ["linux/amd64", "linux/arm64"]
}

variable "registry" {
  default = "docker.io"
}

variable "repository" {
  default = "${registry}/${repo}"
}

target "_all_platforms" {
  platforms = platforms()
  args = {
    GOLANG_VERSION        = version
    GORELEASER_VERSION    = goreleaser_ver
    GOLANGCI_LINT_VERSION = golangci_lint_ver
  }
}

target "v125-trixie" {
  inherits = ["_all_platforms"]
  context = "${minor}/trixie"
  tags = [
    "${repository}:${version}-trixie",
    "${repository}:${version}",
    "${repository}:${minor}",
  ]
}
target "v125-alpine" {
  inherits = ["_all_platforms"]
  context = "${minor}/alpine"
  tags = [
    "${repository}:${version}-alpine",
    "${repository}:${minor}-alpine",
  ]
}
target "v125-ci" {
  inherits = ["_all_platforms"]
  context = "${minor}/ci"
  tags = [
    "${repository}:${version}-ci",
    "${repository}:${minor}-ci",
  ]
}
