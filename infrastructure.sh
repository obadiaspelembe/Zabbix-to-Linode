#!/bin/sh

terraform -chdir="infrastructure" init

terraform -chdir="infrastructure" plan