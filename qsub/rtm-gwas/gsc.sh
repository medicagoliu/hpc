#!/bin/bash

## QSUB OPTIONS
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -l mem_free=4G

## BSUB OPTIONS
#BSUB -n 4
#BSUB -e %J.err
#BSUB -o %J.out

export OMP_NUM_THREADS=4

EXE=/share/apps/rtm-gwas/2019.0/rtm-gwas-gsc

# your code goes here

$EXE --openmp --vcf snpldb.vcf --out gsc.out
