#!/bin/bash
#SBATCH -D /scratch/ss9vz/CAPOW_PY36/UCED/LR/CA0	# working directory
#SBATCH -o /scratch/ss9vz/CAPOW_PY36/UCED/LR/CA0/job.%A.%a.out   # Name of the output file (eg. myMPI.oJobID)
#SBATCH -N 1    		# Number of nodes 
#SBATCH --ntasks-per-node 20           		# Number of processors per node (up to 20)
#SBATCH -p standard          				# Queue name "parallel"
#SBATCH -A quinnlab       					# allocation name
#SBATCH -t 5:00:00       					# Run time (hh:mm:ss) - up to 36 hours
#SBATCH --mail-user=ss9vz@virginia.edu      # address for email notification
#SBATCH --mail-type=ALL                  	# email at Begin and End of jobi

# load module for gpustat
#module load gcc/9.2.0  openmpi/3.1.4 gpustat

# Shell script to sample output of top command
# while your job runs on compute node (optional)
#./sampleTop2.sh $USER ${SLURMD_NODENAME}_${SLURM_JOB_ID} 10 &

export PYTHONPATH=
module load gcc/9.2.0  openmpi/3.1.6 python/3.7.7
source /home/ss9vz/virtual_capow/capow/bin/activate

# Your commands go here
# arguments are <seed> <NFE>
python CA_simulation.py
