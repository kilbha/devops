#! /bin/bash

# Author : Bhargav

# Version : v1

# Listing out AWS resource usage #

## AWS EC2

## AWS S3

## AWS Lambda

## AWS IAM users

## S3 BUCKETS
echo "#####################"
echo "AWS Resource Usage"
echo "#####################"
echo "## S3 buckets"
aws s3 ls

## EC2 instaces
echo "## AWS EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

## Lamda function
echo "## Lambda functions"
aws lambda list-functions

## listing users
echo "## Listing users"
aws iam list-users | jq '.Users[].UserName'