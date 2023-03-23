#!/bin/bash

###############
# Author: Shubham Rawat 
# Date: 23/03/2023
#
# Version: v1
#
# This script will report the AWS resource usage
###############


# AWS EC2
# AWS LAMBDA
# AWS S3
# AWS IAM USERS

# set-x #debug-mode


# List of EC2 Instances
echo "List of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceType'

# List of AWS LAMBDA
echo "List of AWS LAMBDA FUNCTIONS"
aws lambda list-functions

# List of AWS S3 BUCKETS
echo "List of AWS S3 BUCKETS"
aws s3 ls

# List of AWS IAM USERS
echo "List of AWS IAM USERS"
aws iam list-users
