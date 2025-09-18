
## How To Build

p4p requires **cython** and **numpy** to build. As of this writing, we want to target **Python 3.12**.

Building can be accomplished using either:
- Pre-existing conda envs in $PACKAGE_SITE_TOP
- Custom conda env

### Using SLAC Conda Environments

Activate the appropriate conda env using the script:
```sh
source lcls_setup_py312.sh
```

### Using Custom Conda Environments

Create and/or activate the conda environment:
```sh
source lcls_setup_conda.sh
```

NOTE: This requires conda in your `PATH`!

### Building

Simply run `make`

