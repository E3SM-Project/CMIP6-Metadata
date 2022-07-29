#!/bin/bash

rm -f proof

grep experiment_id ../*.json | grep -v sub_exp | grep -v parent_exp | grep -v template | grep -v note >> proof
echo " " >> proof

grep history ../*.json | grep -v template | grep -v note >> proof
echo " " >> proof

grep realization_index ../*.json >> proof
echo " " >> proof

grep branch_time_in_parent ../*.json | grep -v note >> proof
echo " " >> proof


