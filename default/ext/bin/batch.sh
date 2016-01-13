#!/bin/bash
#SBATCH -o /home/hpc/t1221/t1221ag/hpc-project/default/ext/bin/myjob.%j.%N.out 
#SBATCH -D /home/hpc/t1221/t1221ag/hpc-project/default/ext/bin 
#SBATCH -J projecthpc 
#SBATCH --get-user-env 
#SBATCH --clusters=mpp2
# alternatively, use mpp1 
#SBATCH --ntasks=28
#SBATCH --mail-type=end 
#SBATCH --mail-user=joao.ferreira.trindade@gmail.com 
#SBATCH --export=NONE 
#SBATCH --time=00:03:00 
source /etc/profile.d/modules.sh
cd /home/hpc/t1221/t1221ag/hpc-project/default/ext/bin
mpirun -n 4 ./zombie_model zombie_config.props zombie_model.props