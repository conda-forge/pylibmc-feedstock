#!/usr/bin/env bash
set -eux

"${PYTHON}" -m pip install . \
  -vv \
  --no-deps \
  --no-build-isolation \
  --global-option \
    "--with-libmemcached='${PREFIX}' --with-zlib='${PREFIX}'"
