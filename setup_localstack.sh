#!/usr/bin/env bash

install_localstack() {
  pip install localstack   # install localstack
}

launch_localstack() {
  localstack start -d   # install localstack
  localstack status services  # view all available aws services on localstack
}

install_localstack
launch_localstack



