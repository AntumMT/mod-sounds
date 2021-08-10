#!/usr/bin/env bash

d_ldoc="$(dirname $(readlink -f $0))"
d_root="$(dirname ${d_ldoc})"
f_config="${d_ldoc}/config.ld"
d_export="${d_export:-${d_root}/docs/reference}"

cd "${d_root}"

# clean old files
rm -rf "${d_export}"

rm -f "${d_ldoc}/README.md"

./.ldoc/parse_readme.py

# create new files
ldoc --UNSAFE_NO_SANDBOX -c "${f_config}" -d "${d_export}" "${d_root}"

# cleanup
rm -f "${d_ldoc}/README.md"

cp "${d_root}/screenshot.png" "${d_export}"
