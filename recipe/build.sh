#!/bin/bash
"${PYTHON}" -m pip install . --install-option="--with-libmemcached='${PREFIX}'"
