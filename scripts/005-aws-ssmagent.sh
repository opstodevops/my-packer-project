#!/bin/bash

yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm

echo "Successfully installed AWS SSM"
/usr/bin/ssm-cli get-instance-information