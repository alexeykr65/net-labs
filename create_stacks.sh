#!/bin/bash
echo "Remove all old files from dir net-stack"
rm -f net-stack/*.yaml
rm -f net-stack/*.png
echo "create new files "
for f in *.yaml; do
    echo $f
    gen-heatv3.py -l $f
done

