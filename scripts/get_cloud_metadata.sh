#!/bin/sh
set -eu

#EC2/Azure Virtual Machines/Compute Engine

#AWS:
curl http://169.254.169.254/latest/meta-data/instance-type

#Azure:
curl -H "Metadata:true" http://169.254.169.254/metadata/instance/compute/vmSize?api-version=2021-02-01&format=text

#Google Cloud:
curl http://metadata.google.internal/computeMetadata/v1/instance/machine-type -H "Metadata-Flavor: Google"
