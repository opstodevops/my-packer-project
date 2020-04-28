#!/bin/bash

yum -y install python2-pip
ln -s /usr/bin/python2 /usr/bin/python
pip2 install pystache argparse python-daemon requests
yum -y install wget
cd /opt
curl -O https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz
curl -O https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.amzn1.noarch.rpm
tar -xvpf aws-cfn-bootstrap-latest.tar.gz
cd aws-cfn-bootstrap-1.4/
python2 setup.py build
python2 setup.py install
ln -s /usr/init/redhat/cfn-hup /etc/init.d/cfn-hup
chmod 775 /usr/init/redhat/cfn-hup

# Install python-daemon library
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
pip install python-daemon

mkdir -p /opt/aws/bin
ln -s /usr/bin/cfn-hup /opt/aws/bin/cfn-hup
ln -s /usr/bin/cfn-init /opt/aws/bin/cfn-init
ln -s /usr/bin/cfn-signal /opt/aws/bin/cfn-signal

echo "Successfully installed AWS-CFN-INIT"