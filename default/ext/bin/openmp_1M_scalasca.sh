#!/bin/bash 
#SBATCH -o /home/hpc/t1221/t1221ag/hpc-project/default/ext/bin/openmp_1M_job.%j.%N.out 
#SBATCH -D /home/hpc/t1221/t1221ag/hpc-project/default/ext/bin
#SBATCH -J Repast-OpenMP 
#SBATCH --get-user-env 
#SBATCH --clusters=mpp2 
#SBATCH --ntasks=40
#SBATCH --cpus-per-task=2
# the above is a good match for the
# CooLMUC2 architecture.
# For mpp1, thread counts of 2, 4 or 8
# are recommended
#SBATCH --mail-type=end 
#SBATCH --mail-user=joao.ferreira.trindade@gmail.com
#SBATCH --export=NONE 
#SBATCH --time=00:10:00
source /etc/profile.d/modules.sh

cd /home/hpc/t1221/t1221ag/hpc-project/default/ext/bin
export OMP_NUM_THREADS=2

mpirun -n 4 --perhost 14 ./zombie_model zombie_config.props configs/1M/model-2-2.props

# will start 16 MPI tasks with 7 threads each. Note that
# each node has 28 cores, so 4 tasks must be started 
# per host.