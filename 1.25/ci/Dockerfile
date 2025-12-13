#
#--------------------------------------------------------------------------
# golang 1.25 CI
#--------------------------------------------------------------------------
#

ARG GOLANG_VERSION=1.25
FROM golang:${GOLANG_VERSION}-trixie

ARG TARGETOS
ARG TARGETARCH
ARG GORELEASER_VERSION
ARG GOLANGCI_LINT_VERSION

LABEL maintainer="chinayin <whereismoney@qq.com>" \
      tools.goreleaser="${GORELEASER_VERSION}" \
      tools.golangci_lint="${GOLANGCI_LINT_VERSION}"

#COPY prebuildfs /

RUN set -eux; \
    \
    tmp="$(mktemp -d)"; trap 'rm -rf "${tmp}"' EXIT; \
    \
    # goreleaser
    case "${TARGETARCH}" in \
      amd64) gr_arch="x86_64" ;; \
      arm64) gr_arch="arm64" ;; \
      *) echo "unsupported arch: ${TARGETARCH}" >&2; exit 1 ;; \
    esac; \
    echo "==> Installing goreleaser ${GORELEASER_VERSION} for ${TARGETOS}/${TARGETARCH}"; \
    curl -fsSL "https://github.com/goreleaser/goreleaser/releases/download/${GORELEASER_VERSION}/goreleaser_${TARGETOS}_${gr_arch}.tar.gz" \
      | tar -xz -C /usr/local/bin goreleaser; \
    goreleaser --version; \
    \
    # golangci-lint
    echo "==> Installing golangci-lint ${GOLANGCI_LINT_VERSION} for ${TARGETOS}/${TARGETARCH}"; \
    curl -fsSL "https://github.com/golangci/golangci-lint/releases/download/${GOLANGCI_LINT_VERSION}/golangci-lint-${GOLANGCI_LINT_VERSION#v}-${TARGETOS}-${TARGETARCH}.tar.gz" \
      | tar -xz -C "${tmp}"; \
    mv "${tmp}/golangci-lint-${GOLANGCI_LINT_VERSION#v}-${TARGETOS}-${TARGETARCH}/golangci-lint" /usr/local/bin/; \
    golangci-lint --version
