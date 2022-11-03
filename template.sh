#!/usr/bin/env bash

# when a command fails, bash exits instead of continuing with the rest of the script.
set -o errexit

# make the script fail, when accessing an unset variable. Saves from horrible unintended consequences, with typos in variable names.
set -o nounset

# ensure that a pipeline command is treated as failed, even if one command in the pipeline fails.
set -o pipefail

# enables debug mode by running TRACE=1 ./script.sh
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi
