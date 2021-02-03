# Check the systme type
#!/usr/bin/env bash
if conda info | grep -i 'conda version' ; then
    echo "Anaconda installed"
    if conda info --envs | grep -i "\<eigendata\>"; then
        echo "There is already an enviornment named eigendata"
    else
        echo "Proceed with installation"
        # 1. Create environment
        conda env create -f default_environment.yaml  
        # 2. Source anaconda path
        conda_path=$(conda info --base)
        source "$conda_path/etc/profile.d/conda.sh"
        # 3. Activate the environment
        conda activate eigendata
        # 4. Install jupyter lab extension
        jupyter labextension install @molinsp/eigendata
        # 5. Install plotly jupyter lab extension
        jupyter labextension install jupyterlab-plotly
    fi
else
    echo "Anaconda not installed, please install Anaconda before proceeding"
fi


