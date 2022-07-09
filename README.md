
<div align="center">

  <h1>ROS2 - Self Driving Cars</h1>
  
  <p>
     Development of an autonomous car in ROS2 that follows the lane, classifies signs using CNN and follows the signs using object tracking to adjust its speed.
  </p>


<!-- PROJECT LOGO -->
<br />
<div align="center">
    <img src="https://icon-library.com/images/autonomous-icon/autonomous-icon-10.jpg" alt="Logo" width="300" height="auto" >
  </a>
</div>
  
<!-- Badges -->
<p>
  <a href="https://github.com/CagriCatik/ros2sdc/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/CagriCatik/ros2sdc" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/CagriCatik/ros2sdc" alt="last update" />
  </a>
  <a href="https://github.com/CagriCatik/ros2sdc/network/members">
    <img src="https://img.shields.io/github/forks/CagriCatik/ros2sdc" alt="forks" />
  </a>
  <a href="https://github.com/CagriCatik/ros2sdc/stargazers">
    <img src="https://img.shields.io/github/stars/CagriCatik/ros2sdc" alt="stars" />
  </a>
  <a href="https://github.com/CagriCatik/ros2sdc/issues/">
    <img src="https://img.shields.io/github/issues/CagriCatik/ros2sdc" alt="open issues" />
  </a>
</p>
   
</div>

<br />

<!-- TOC -->

- [Requirements](#requirements)
- [Workflow](#workflow)
    - [Robot Operating System](#robot-operating-system)
    - [Computer Vision](#computer-vision)
    - [Deep Learning](#deep-learning)
- [Setup & Configuration](#setup--configuration)
    - [Install ROS2 Galactic Geochelone](#install-ros2-galactic-geochelone)
    - [Configuration](#configuration)
    - [Virtual environment creation](#virtual-environment-creation)
- [Roadmap](#roadmap)
- [Source](#source)
- [Troubleshooting](#troubleshooting)

<!-- /TOC -->

## Requirements

* Ubuntu 20.04 (LTS)
* ROS2 - Galactic Geochelone
* Python 3.8.10
* Opencv 4.2
* Tensorflow 2.14

## [Workflow](https://google.com)
### [Robot Operating System](https://google.com)
* [ ] World Models Creation
* [ ] Prius OSRF gazebo Model Editing
* [ ] Nodes, Launch Files
* [ ] SDF through Gazebo
* [ ] Textures and Plugins in SDF

### [Computer Vision](https://google.com)
* [ ] Perception Pipeline setup
* [ ] Lane Detection with Computer Vision Techniques
* [ ] Traffic Light Detection Using Haar Cascades
* [ ] Sign and Traffic Light Tracking using Optical Flow
* [ ] Rule-Based Control Algorithms

### [Deep Learning](https://google.com)
* [ ] Sign Classification using (custom-built) CNN
* [ ] Lane Detection with CNN

## Setup & Configuration

### Install ROS2 Galactic Geochelone

* Clone the repository, make the bash script executable and install ROS2 Galactic Geochelone

```sh
cd ~/ && git clone https://github.com/CagriCatik/ros2sdc
cd ~/ros2sdc/setup
 
chmod +x ros2_install_galactic.sh && requirements.sh
bash ./ros2_install_galactic.sh && ./requirements.sh
```

### Configuration

Get into the downloaded repository
 ```sh
 cd ~/ros2sdc
```

Bring all models into your **.gazebo/models**
 ```sh
 mkdir -p ~/.gazebo/models
 cp /models/* ~/.gazebo/models
 ```

Perform Colcon Build ( if not installed refer to Repo_resources/How_to_run_the_project.txt )
```sh
colcon build
```

### Virtual environment creation

Install virtualenv package

```python
python3 -m pip install --user virtualenv
```

Create a virtual environment

```python
python3 -m virtualenv ros2sdc
```

Activate virtual environment

```python
source ros2sdc/bin/activate
```

Install requirements

```sh
cd ~/ros2sdc/setup
pip3 install -r requirements.txt
```

Build the project
```sh
cp -r self_driving_car_pkg/models/* ~/.gazebo/models
colcon build
```

## Roadmap
* [ ] Repo configuration
* [ ] Workflow - ROS
* [ ] Workflow - CV
* [ ] Workflow - DL

## Source

- [ROS2 Self Driving Car - Udemy](https://www.udemy.com/course/ros2-self-driving-car-with-deep-learning-and-computer-vision/?couponCode=APRIL_END)
- [Xacro, URDF, SDF, Gazebo](https://nu-msr.github.io/me495_site/lecture10_sdf_gazebo.html)
- [Demo of Prius in ROS/Gazebo](https://github.com/osrf/car_demo)

## Troubleshooting
