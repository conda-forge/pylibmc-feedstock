#!/usr/bin/env bash
"${PYTHON}" -m pip install . --install-option="--with-libmemcached='${PREFIX}'"
