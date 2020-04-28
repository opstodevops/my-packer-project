#!/bin/bash

/usr/bin/curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "/tmp/awscli-bundle.zip" 2>&1

/bin/yum install -y unzip
(cd /tmp;unzip awscli-bundle.zip)
echo "#!/bin/sh" > /tmp/install.sh
echo "umask 022" >> /tmp/install.sh
echo "/tmp/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws" >> /tmp/install.sh
chmod 755 /tmp/install.sh
/tmp/install.sh
rm -rf /tmp/awscli-bundle*
rm -rf /tmp/install.sh
