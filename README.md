# vee_flow
## Abridged Workflow 
This workflow is a different version of Biruk's. It will calculate the S0 ground state with M06/6-31+G(d,p) in vacuum and S0 in solvent with wB97xD/6-31+G(d,p). It also calculates vertical excitation energies in vacuum and solvent with wB97xD/6-31+G(d,p). 

### A few changes 
In your ~/.bashrc add "PFLOW="_loc_of_new_flow_""

Also in your ~/.bashrc make sure you are sourcing the functions.sh script from the new pFlow. 
>That means **changing** "set -a; source /home/username/_loc_of_old_flow_/functions.sh; set +a" to  
>"set -a; source /home/username/**_loc_of_new_flow_**/functions.sh; set +a"

#### To start/setup calculations 
Use "git clone https://github.com/lopez-lab/vee_flow.git" to copy the directory to your home directory 

To create a new flow use the setup_flow function "$PFLOW/utils/setup_flow.sh _name_of_flow_" in your scratch direcotry. This creates an instance of the workflow in your scratch directory where you can run active calculations but make sure the vee_flow code is still in your home directory. 

To begin calculations use "$PFLOW/begin_calcs.sh" in the directory of the workflow 

#### To update workflow 
In your home directory where vee_flow was cloned, use "git pull origin master" to update with changes. Note, this does not change the workflow you created in your scratch directory. 

#### Check workflow progress
When in your scratch flow directory, run "check_prog" in the command line to see the progression of the calculations. 
