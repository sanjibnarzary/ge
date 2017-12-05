#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=6:00:00
#SBATCH --mem=32GB
#SBATCH --job-name=charnmt_cpu
#SBATCH --mail-type=END
#SBATCH --mail-user=xc965@nyu.edu
#SBATCH --output=charnmt_cpu.out
#SBATCH --cpus-per-task=4

module purge

module load numpy/python3.5/intel/1.13.1
module load python3/intel/3.5.3
module load pytorch/python3.5/0.2.0_3
module load tensorflow/python3.5/1.2.1

python3.5 main.py
