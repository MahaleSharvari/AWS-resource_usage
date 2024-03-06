#!/bin/bash

####################
#Author: Sharvari Mahale
#
#Date: 25th Feb, 2024
#
#Script will report the AWS resource usage
###################

#AWS S3
#AWS EC2
#AWS LAMBDA
#AWS IAM

set -x

#To list all the s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > ResourceTracker

#To list EC2 Instances
echo "Print list of ec2 instances"
#To list only the instance id of the instances 
aws ec2 describe-instances | jq 'Reservations[].Instances[].InstanceId' > ResourceTracker

#To list lambda
echo "Print list of lambda functions"
aws lambda list-functions > ResourceTracker

#To list IAM users
echo "Print list of iam users"
aws iam list-users > ResourceTracker
