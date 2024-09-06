from subprocess import call
import sys
from pathlib import Path

import site

src = str(Path(site.getsitepackages()[0]) / "pylibmc")

TEST = [
    "coverage",
    "run",
    "--source=pylibmc",
    "--branch",
    "-m",
    "pytest",
    "-vv",
    "--doctest-modules",
    "--doctest-glob=*.txt",
    src,
    "tests",
]
REPORT = ["coverage", "report", "--show-missing", "--skip-covered", "--fail-under=54"]


if __name__ == "__main__":
    sys.exit(max(map(call, [TEST, REPORT])))
