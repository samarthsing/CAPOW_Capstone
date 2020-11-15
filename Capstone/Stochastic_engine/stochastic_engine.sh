#!/bin/bash
#SBATCH -D /scratch/ss9vz/CAPOW_PY36/Stochastic_engine_4/	# working directory
#SBATCH -o /scratch/ss9vz/CAPOW_PY36/Stochastic_engine_4/job.%j.%N.out   # Name of the output file (eg. myMPI.oJobID)
#SBATCH -N 1
#SBATCH --ntasks-per-node 20
#SBATCH -p standard          				# Queue name "parallel"
#SBATCH -A quinnlab       					# allocation name
#SBATCH -t 24:00:00       					# Run time (hh:mm:ss) - up to 36 hours
#SBATCH --mail-user=ss9vz@virginia.edu      # address for email notification
#SBATCH --mail-type=ALL                  	# email at Begin and End of job
#SBATCH --array=1-10                    # Array of jobs to loop through

export PYTHONPATH=
module load gcc/9.2.0  openmpi/3.1.6 python/3.7.7
source /home/ss9vz/virtual_capow/capow/bin/activate

# Your commands go here
# arguments are <seed> <NFE>
python stochastic_engine.py ${SLURM_ARRAY_TASK_ID}
