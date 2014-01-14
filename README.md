# iLab3

Wheels and requirements file used to build my scientific python3 environments.

## Adding packages

```bash
pip install <package>          # Install packages
pip freeze > requirements.txt  # Rewrite requirements
# If necessary, transform any
# "-e git+git@your.gitrepo.com:/repo.git#egg=repo"
# in requirements.txt to
# "git+https://your.gitrepo.com/repo.git"
# because wheel doesn't handle the former.
pip wheel -r requirements.txt  # Rebuild wheels
```
