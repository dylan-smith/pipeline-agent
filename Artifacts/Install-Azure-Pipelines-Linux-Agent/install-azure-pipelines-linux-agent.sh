#!/bin/bash

###
# Arguments:
#
# $1    URL
# $2    Personal Access Token
# $3    Pool Name
#
###

cd /usr/bin
mkdir agent
cd agent
wget -O pipelines-agent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.150.3/vsts-agent-linux-x64-2.150.3.tar.gz
tar zxvf pipelines-agent.tar.gz
sudo ./config.sh --unattended --url $1 --auth pat --token $2 --pool $3 --acceptTeeEula
sudo ./svc.sh install
sudo ./svc.sh start
