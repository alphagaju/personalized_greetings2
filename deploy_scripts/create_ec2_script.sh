#!/bin/bash
image="ami-04a81a99f5ec58529" 
aws ec2 run-instances \
--image-id $image \
--instance-type t2.micro \
--key-name alphonse_03_08_2024_0815 \
--security-groups launch-wizard-5 \
--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$1}]"
