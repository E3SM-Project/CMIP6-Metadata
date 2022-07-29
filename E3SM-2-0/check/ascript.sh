#!/bin/bash

for exp in `cat $1`; do
    comp1=`grep parent_activity $exp | cut -f2`
    comp2=`grep parent_variant $exp | cut -f2`
    echo $exp,$comp1,$comp2
done

