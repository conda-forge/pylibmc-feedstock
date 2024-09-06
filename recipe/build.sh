#!/usr/bin/env bash
"${PYTHON}" -m pip install
  -vv \
  --no-deps \
  --no-build-isolation \
  --global-option \
    "--with-libmemcached='${PREFIX}' --with-zlib='${PREFIX}' --with-sasl2='${PREFIX}'" \
  .
