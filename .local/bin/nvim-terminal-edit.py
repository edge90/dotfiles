#!/usr/bin/env python

import sys
from nvr import nvr

from nvr.nvr import main


args = sys.argv
args += ['-l']

main(args)
