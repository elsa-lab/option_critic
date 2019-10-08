#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

################################################################################
# Set Actions
################################################################################

# Set the Noodles action
export NOODLES_ACTION=purge

################################################################################
# Set Paths
################################################################################

# Set the path of the spec
export SPEC_PATH='specs/train/reduced_action_space/env_id-beam_rider.yml'

################################################################################
# Start Training
################################################################################

# Run the common script
bash "scripts/noodles/.common/$NOODLES_ACTION.sh"