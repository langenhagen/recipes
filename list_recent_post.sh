#!/bin/bash
# Write the path to the most recently accessed post to stdout.
#
# author: andreasl

cd "$(git rev-parse --show-toplevel)" || exit 1

stat --format '%X %n' _posts/* | sort -h | awk 'END{print $2}'
