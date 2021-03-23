#!/bin/bash
#SBATCH -D /scratch/ss9vz/CAPOW_PY36/Model_setup/	# working directory
#SBATCH -o /scratch/ss9vz/CAPOW_PY36/Model_setup/job.%j.%N.out   # Name of the output file (eg. myMPI.oJobID)
#SBATCH --ntasks=1           		# Number of processors per node (up to 20)
#SBATCH -p standard          				# Queue name "parallel"
#SBATCH -A quinnlab       					# allocation name
#SBATCH -t 5:00:00       					# Run time (hh:mm:ss) - up to 36 hours
#SBATCH --mail-user=ss9vz@virginia.edu      # address for email notification
#SBATCH --mail-type=ALL                  	# email at Begin and End of job

export PYTHONPATH=
module load gcc/9.2.0  openmpi/3.1.6 python/3.7.7
source /home/ss9vz/virtual_capow/capow/bin/activate

# Your commands go here
# arguments are <seed> <NFE>
python UCED_setup.py
