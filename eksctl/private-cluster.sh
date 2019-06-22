#!/bin/bash

eksctl create cluster --name=oregon2 --nodes=3 --node-type=m5.xlarge --ssh-access --ssh-public-key=oregon --node-volume-size=300 --node-private-networking  --region=us-west-2 --vpc-cidr=10.1.0.0/16 --version=1.12