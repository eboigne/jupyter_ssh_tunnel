#!/bin/sh

# get tunneling info
port=$(shuf -i8000-9999 -n1)
node=$(hostname -s)
user=$(whoami)
cluster=$HOSTNAME # Check environment variables with `printenv` to look for address of a login node of the cluster, not a compute node

# print tunneling instructions jupyter-log
echo -e "
In a separate local terminal, run:
ssh -N -L ${port}:${node}:${port} ${user}@${cluster}
"

jupyter-notebook --no-browser --port=${port} --ip=${node}
