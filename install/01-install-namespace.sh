#!/usr/bin/env bash

cd ..

oc apply -f ./src/ns --validate=false --insecure-skip-tls-verify=true 

kubectl annotate --overwrite namespace sd4-chn-ns mcm.ibm.com/accountID='46b0-718d' --insecure-skip-tls-verify=true
kubectl annotate --overwrite namespace sd4-app-ns mcm.ibm.com/accountID='46b0-718d' --insecure-skip-tls-verify=true
