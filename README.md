# setup_files

## Installation

You can clone the repository in any folder as the installation script will copy all the underscored files to your home directory and change their name to become your dot files.

With no change in the setup files, the installation is mainly made for a MacOS environment as it relies on the installation on some Homebrew packages

### Install Homebrew formulae

When setting up a new Mac, and after installing [Homebrew](https://brew.sh), you may want to install some of the common formulae.

```bash
./brew.sh
```

You can always run this script to make sure all the packages are installed.

### Main bash setup

Once we have our required packages, the `install` script can be used to set your bash environment.

```bash
git clone https://github.com/chrisr3d/setup_files.git
cd setup_files
source install.sh
```

### Mac OS settings

When setting up a new Mac, you may want to set some macOS defaults:

```bash
./.macos
```

## Disclaimer

**Warning**: If you want to give this setup a try, you should first review the scripts and remove things you do not want or need. For instance, there will be no java environment installed here.