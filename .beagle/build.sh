#!/bin/sh

GOOS=linux GOARCH=amd64 make build/helm-operator
mv build/helm-operator build/helm-operator-linux-amd64

GOOS=linux GOARCH=arm64 make build/helm-operator
mv build/helm-operator build/helm-operator-linux-arm64

GOOS=linux GOARCH=ppc64le make build/helm-operator
mv build/helm-operator build/helm-operator-linux-ppc64le
