#!/usr/bin/env bash
set -eu

# REF: https://index.ros.org/doc/ros2/Installation/Linux-Install-Debians/
# by Open Robotics, licensed under CC-BY-4.0
# source: https://github.com/ros2/ros2_documentation


echo $'\e[32m---------------------------------------\e[0m'
echo "ROS2 - ROS2 Galatic Installation"
echo $'\e[32m---------------------------------------\e[0m'
echo ""
echo ""
echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Check for UTF-8 \e[0m'
echo $'\e[32m---------------------------------------\e[0m'


locale  # check for UTF-8

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Set locale which supports UTF-8 \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

apt-cache policy | grep universe
sudo apt install software-properties-common
sudo add-apt-repository universe


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Autorize the GPG key with apt \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

sudo apt update && sudo apt install curl gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Add the repository to your sources list \e[0m'
echo $'\e[32m---------------------------------------\e[0m'


echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update && sudo apt install -y \
  build-essential \
  cmake \
  git \
  libbullet-dev \
  python3-colcon-common-extensions \
  python3-flake8 \
  python3-pip \
  python3-pytest-cov \
  python3-rosdep \
  python3-setuptools \
  python3-vcstool \
  wget
  
  
echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Install some pip packages needed for testing \e[0m'
echo $'\e[32m---------------------------------------\e[0m'


python3 -m pip install -U \
  argcomplete \
  flake8-blind-except \
  flake8-builtins \
  flake8-class-newline \
  flake8-comprehensions \
  flake8-deprecated \
  flake8-docstrings \
  flake8-import-order \
  flake8-quotes \
  pytest-repeat \
  pytest-rerunfailures \
  pytest


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m ROS2 Galatic Desktop Version          \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

sudo apt install -y ros-galactic-desktop

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Sourcing the setup script \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

echo "source /opt/ros/galactic/setup.bash" >> ~/.bashrc

sudo apt autoremove
sudo apt-get upgrade

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Done!                                 \e[0m'
echo $'\e[32m---------------------------------------\e[0m'
