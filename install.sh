PROJECT_NAME=${PWD##*/} 
ENV_NAME=${PROJECT_NAME:6:30}

# Create env
conda create -n $ENV_NAME python=3

# Install dependencies
source activate $ENV_NAME && pip install -r requirements.txt

# Install kernel spec for Jupyter notebook
python -m ipykernel install --name $ENV_NAME --display-name $ENV_NAME

