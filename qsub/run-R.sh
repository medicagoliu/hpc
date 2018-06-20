#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#
#$ -l mem_free=4G
#

export OMP_NUM_THREADS=2
export MKL_NUM_THREADS=2
export OPENBLAS_NUM_THREADS=2

RSCRIPT=/share/apps/R/3.4.4/bin/Rscript

# your code goes here

$RSCRIPT hello.R
