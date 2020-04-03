# vee_flow
## Abridged Workflow 
This workflow is a different version of Biruk's. It will calculate the S0 ground state with M06/6-31+G(d,p) in vacuum and S0 in solvent with wB97xD/6-31+G(d,p). It also calculates vertical excitation energies in vacuum and solvent with wB97xD/6-31+G(d,p). 

### A few changes 
In your ~/.bashrc add "PFLOW="_loc_of_new_flow_""

Also in your ~/.bashrc make sure you are sourcing the functions.sh script from the new pFlow. 
>That means **changing** "set -a; source /home/username/_loc_of_old_flow_/functions.sh; set +a" to  
>"set -a; source /home/username/**_loc_of_new_flow_**/functions.sh; set +a"

#### To start/setup calculations 
To create a new flow use $PFLOW/utils/setup_flow.sh _name_of_flow_

To begin calculations use "$PFLOW/begin_calcs.sh" in the directory of the workflow 
