#!/bin/bash
git add .
sleep 5
git commit -m $1
sleep 5
git push https://renanrmoraes:q1w2e3R$@github.com/renanrmoraes/hpa.git --all
#git push
oc start-build hpa
sleep 10
oc get po -w
