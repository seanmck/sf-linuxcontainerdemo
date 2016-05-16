#!/bin/bash

azuresfcli servicefabric application-package copy NodeJSApp fabric:ImageStore
azuresfcli servicefabric application type register NodeJSApp
azuresfcli servicefabric application create fabric:/nodejs1 NodeSFAppType 1.0
azuresfcli servicefabric service create --application-name fabric:/nodejs1 --service-name fabric:/nodejs1/service1 --service-type-name NodeOnSFServiceType --instance-count 1 --service-kind Stateless --partition-scheme Singleton
