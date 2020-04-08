#!/bin/bash
# List the existing tags used throughout the posts.
#
# author: andreasl

post_dir="$(git rev-parse --show-toplevel)/_posts"

grep -hr "tags: " "${post_dir}" | sed -E 's/tags:|[][, ]/\n/g' | sort -du
