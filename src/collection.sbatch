#!/bin/bash

#SBATCH --account=pi-lhansen
#SBATCH --job-name=collection
#SBATCH --output=collection.out
#SBATCH --error=collection.err
#SBATCH --time=24:00:00
#SBATCH --partition=standard
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=56G

module load python/booth/3.10/3.10.4

srun python3 collection.py