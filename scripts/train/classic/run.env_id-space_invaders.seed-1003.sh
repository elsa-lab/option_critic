#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

################################################################################
# Set Names
################################################################################

# Set the name
export NAME="classic"

################################################################################
# Set Variable Training Arguments
################################################################################

# Set the environment ID
export ENV_ID="space_invaders"

# Set the seed
export SEED=1003

################################################################################
# Set Fixed Training Arguments
################################################################################

# Set the number of epochs
export EPOCHS=400

# Set the number of options
export NUM_OPTIONS=8

################################################################################
# Initialization
################################################################################

# Set the common variables
source "scripts/.common/set_common_variables.sh"

# Initialize the training variables
source "scripts/train/.common/init_training_variables.sh"

# Initialize the training environment
source "scripts/train/.common/init_training_environment.sh"

################################################################################
# Start Training
################################################################################

# Run the common script
bash "scripts/train/classic/.common/run.sh"
