#!/bin/bash

# run the bids-app bids/freesurfer
/run.py "$@"

#calculate the signature
/ctp-signature.py