#!/usr/bin/env python3

import sys
import rdcm

def main(argv=None):
    print(argv)
    print("hi")
    rdcm.test()

if __name__ == "__main__":
    main(sys.argv[1:])