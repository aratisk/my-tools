#!/bin/bash

##################################
# copies over the sample files for testing
#cleans up logs and output folder
# runs from parent directory
#################################
rm -rf output verify_op.log verify_ip.log handbrake-errors.log
rm -rf input/*
cp -r input_template/*  input
