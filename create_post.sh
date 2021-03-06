#!/bin/bash
# Create a new jekyll post with the current date and the given title,
# print the path to the post file
# and open the new post file in an editor.
#
# author: andreasl

post_title="$*"
if [[ "$1" =~ -h|--help ]] || [ -z "$post_title" ]; then
    printf "usage:  ${0} <post-title>\n"
    exit 0
fi

repo_dir="$(git rev-parse --show-toplevel)"
post_date="$(date '+%Y-%m-%d')"
title_slug="$(printf -- "$post_title" | sed -E 's/[^a-zA-Z0-9]+/-/g' | tr "[:upper:]" "[:lower:]")"
post_path="${repo_dir}/_posts/${post_date}-${title_slug}.md"
[ -e "$post_path" ] && printf 'Error: Post exists already.\n' && exit 2

IFS= read -r -d '' front_matter << EOF
---
layout: post
title: "${*}"
date: ${post_date}
tags: []
---
# ${*}
EOF

printf -- "$front_matter" > "$post_path"

printf -- '%s\n' "$post_path"
subl "$post_path"

printf '\nConsider following tags:'
bash "${repo_dir}/list_tags.sh"
