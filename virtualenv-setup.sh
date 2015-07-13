#!/bin/bash

cat <<EOT >> ~/.bashrc
export WORKON_HOME=$WORKON_HOME
export PROJECT_HOME=$PROJECT_HOME
source /usr/local/bin/virtualenvwrapper.sh
EOT
source ~/.bashrc
