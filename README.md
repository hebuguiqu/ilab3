# iLab3

Wheels and requirements file used to build my scientific python3 environments.

## Usage

```bash
git clone https://github.com/wehlutyk/ilab3.git  # Clone this repo
mkvirtualenv -p python3 <your-environment>       # Create a python3 environment
./install.sh                                     # Install the wheels
```

## Adding packages

```bash
pip install <package>          # Install packages
pip freeze > requirements.txt  # Rewrite requirements

# If necessary, transform any
# "-e git+git@your.gitrepo.com:/repo.git#egg=repo"
# in requirements.txt to
# "git+https://your.gitrepo.com/repo.git"
# because wheel doesn't handle the former.

# Also, while matplotlib in PyPI is not yet 1.2.x (support for python3),
# the original "https+git" gets converted to "matplotlib==1.4.x" when using
# "pip freeze", so this also needs correcting.

pip wheel -r requirements.txt  # Rebuild wheels
```
