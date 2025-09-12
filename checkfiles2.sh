#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
head -n 1 rplpl-slurm*.out

echo "End Times"
find session01 -name "*high*out" -or -name "*lfp*out" | xargs tail -n 1 | sort
