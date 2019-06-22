#!/bin/bash

eksctl create nodegroup --cluster=oregon-1-12 --name=m5-2xlarge --nodes=3 --node-type=m5.2xlarge --ssh-access --ssh-public-key=oregon --node-volume-size=300  --region=us-west-2 --version=1.12