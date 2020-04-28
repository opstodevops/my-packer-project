#!/bin/bash

yum install -y https://s3.amazonaws.com/amazoncloudwatch-agent/redhat/amd64/latest/amazon-cloudwatch-agent.rpm
#rpm -U ./amazon-cloudwatch-agent.rpm

echo "Successfully installed AWS-Cloudwatch-Agent"
/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a status