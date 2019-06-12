#!/usr/bin/python3

import os, sys
from mako.template import Template

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: mako input output")
        sys.exit(1)

    template = Template(filename=sys.argv[1]) 

    with open(sys.argv[2], "w") as writer:
        writer.write(template.render())
