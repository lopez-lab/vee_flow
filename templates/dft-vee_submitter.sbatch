#!/bin/bash
#SBATCH -J DFT-VEE_submitter
#SBATCH -o DFT-VEE_submitter.o
#SBATCH -e DFT-VEE_submitter.e
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p short
#SBATCH --time=24:00:00
#SBATCH --parsable
#SBATCH --dependency=afterany:LEE_ID

# source config and function files
source_config

gen_slurm_report

pwd
# handles submission of:
# 	single-point TD-DFT (for vertical excitation energy)
#	DFT S0 Optimization

# submit S0 DFT optimization array (in vacuo)
cd $S0_VAC
pwd
#S0_DFT_OPT_VAC_ID=$(submit_array "$TITLE\_S0_VAC" "g16_inp.txt" "com" $FLOW_TOOLS/templates/array_g16_s0_dft-opt_vac.sbatch $DFT_TIME)
wait

# submit S0 DFT optimization array (in solvent)
cd $S0_SOLV
S0_DFT_OPT_SOLV_ID=$(submit_array "$TITLE\_S0_SOLV" g16_inp.txt com $FLOW_TOOLS/templates/array_g16_dft-opt.sbatch $DFT_TIME)
wait

# submit single-point TD-DFT array (in solvent)
cd $SP_TDDFT
pwd
#SP_TD_DFT_ID=$(submit_array "$TITLE\_SP-TDDFT" "g16_inp.txt" "com" $FLOW_TOOLS/templates/array_g16_sp_td-dft.sbatch $DFT_TIME)
wait

# submit DFT submitter for all other DFT optimizations
#sed "s/S0_DFT_OPT_VAC_ID/$S0_DFT_OPT_VAC_ID/g" $FLOW_TOOLS/templates/dft-opt_submitter.sbatch | sbatch
