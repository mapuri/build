#!/bin/bash

set -xe

systemctl enable docker
systemctl stop docker
