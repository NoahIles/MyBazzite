#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# rpm-ostree install screen

shell_tools=(
    "zsh"
    "zsh-syntax-highlighting"
    "fzf"
    "tealdeer"
    "bat"
    "ripgrep"
    "htop"
    "xsel"
)


# Install Homebrew if it's not already installed
if command -v brew &> /dev/null; then
    brew update
    brew install ${shell_tools[@]}
    # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew

# rpm-ostree install ${packages[@]}