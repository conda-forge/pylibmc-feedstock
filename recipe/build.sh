#!/usr/bin/env bash
"${PYTHON}" -m pip install . \
  --no-deps \
  --no-build-isolation \
  --global-option="--with-libmemcached='${PREFIX}'"
