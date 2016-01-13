#!/bin/bash
mpirun -n 4 ./zombie_model zombie_config.props configs/80k/model-2-2.props
mpirun -n 9 ./zombie_model zombie_config.props configs/80k/model-3-3.props
mpirun -n 16 ./zombie_model zombie_config.props configs/80k/model-4-4.props
mpirun -n 25 ./zombie_model zombie_config.props configs/80k/model-5-5.props
mpirun -n 32 ./zombie_model zombie_config.props configs/80k/model-4-8.props
