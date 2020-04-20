#!/usr/bin/env python3
import sys
import os

height = float(os.environ['MY_HEIGHT'])
print (float(sys.argv[1]) / pow(height, 2))
