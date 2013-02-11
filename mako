#!/usr/bin/python

import os, sys
from mako.lookup import TemplateLookup

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print "Usage: mako input output"
        sys.exit(1)

    base_dir = os.path.dirname(os.path.abspath(__file__))
    lookup = TemplateLookup(directories=[base_dir], input_encoding="utf-8", output_encoding="utf-8") 

    with open(sys.argv[2], "w") as writer:
        writer.write(lookup.get_template(sys.argv[1]).render())
