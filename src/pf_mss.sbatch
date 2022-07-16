#!/bin/bash

#SBATCH --account=pi-lhansen
#SBATCH --job-name=pf_mss
#SBATCH --output=pf_mss.%A_%a.out
#SBATCH --error=pf_mss.%A_%a.err
#SBATCH --time=0-1:00:00
#SBATCH --partition=standard
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=32G
#SBATCH --array=1-130

module load python/booth/3.10/3.10.4

srun python3 multi_seeds.py
srun python3 Run_Aso1_0_CPU_$SLURM_ARRAY_TASK_ID.py  