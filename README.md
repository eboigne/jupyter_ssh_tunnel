# How to run Jupyter Notebook remotely on a cluster?

## Setup

Download the attached .sh file where desired:

`wget https://raw.githubusercontent.com/eboigne/jupyter_ssh_tunnel/main/remote_jupyter_notebook.sh`

Make it executable

`chmod +x remote_jupyter_notebook.sh`

## Usage

Login via ssh into your cluster, and get an interactive node.

Then, load any module of interest:

`module load module1 module2`

and activate local environments (make sure to have jupyter installed):

`conda activate myEnv`

Run the downloaded script to create the ssh tunnel:

`./remote_jupyter_notebook.sh &`

In another local shell (not on cluster), run the bash line output by the above script. It reads something like:

`ssh -N -L port:node:port user@cluster`

Finally, you can access the Jupyter Notebook locally using the link provided by Jupyter, looking similar to:

`http://127.0.0.1:port/?token=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`

The Jupyter notebook is now running on the cluster, and can be accessed locally. 

Note that you can also setup a bash script to do this automatically if desired, but the assumption is that if you are using a Notebook, you want an interactive session.
