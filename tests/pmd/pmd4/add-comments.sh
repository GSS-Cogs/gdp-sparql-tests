#!/bin/bash

for f in *.sparql; do gsed -i "1s;^;#$(basename $f .sparql | gsed 's/SELECT_//;s/\([A-Z]\)/ \1/g')\n\n;" $f; done
