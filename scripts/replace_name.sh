#!/usr/bin/env bash
set -euxo pipefail

find ~/repos/setup_devops_environment -type f -exec sed -i 's/setup_devops_environment/setup-devops-environment/g' {} +
find ~/repos/setup_devops_environment -type f -exec sed -i 's/blackdesert575/blackdesert575/g' {} +