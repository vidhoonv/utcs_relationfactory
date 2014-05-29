#!/bin/sh

#
# TAC_ROOT/MODELS should contain local machine path for building
# and cluster path during compile time
#
#path to relationfactory directory
export TAC_ROOT=/var/local/vidhoon/ra/lsv/relationfactory-master
#export TAC_ROOT=/scratch/cluster/vidhoon/kbp/lsv/relationfactory-master

#path to relationfactory_models directory

#export TAC_MODELS=/scratch/cluster/vidhoon/kbp/lsv/relationfactory-master/models/relationfactory_models
export TAC_MODELS=/var/local/vidhoon/ra/lsv/relationfactory-master/models/relationfactory_models

#
# Evaluation and runs happen in cluster. So they should contain cluster paths
# If otherwise, change accordingly
#
#path to evaluation directory
export TAC_EVALUATION=/scratch/cluster/vidhoon/kbp/lsv/relationfactory-master/evaluation

#path to runs directory
export TAC_RUNS=/scratch/cluster/vidhoon/kbp/lsv/relationfactory-master/runs

#add path of cabal binary to PATH variable
export PATH=$PATH:/tmp/test/bin/
