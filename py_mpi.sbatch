#!/bin/bash

#SBATCH -p tornado
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --time=00:10:00

echo "Date                           = $(date)"
echo "Hostname                       = $(hostname -s)"
echo "Working Directory              = $(pwd)"
echo ""
echo "Number of Nodes Allocated      = $SLURM_JOB_NUM_NODES"
echo "Number of Tasks Allocated      = $SLURM_NTASKS"
echo "Number of Cores/Task Allocated = $SLURM_CPUS_PER_TASK"

module load mpi/openmpi/4.0.1/gcc/8
module load python/3.9
mpirun -q python3 ./mpi.py 1000
