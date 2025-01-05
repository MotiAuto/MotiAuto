#!/bin/bash

sudo apt install python3-vcstool -y
sudo apt install nodejs npm -y
sudo apt install -y ros-$ROS_DISTRO-rosbridge-suite

rm -rf ./src ./log ./install ./build

mkdir src
echo "Install moti auto repos."
vcs import src < motiauto.repos

echo "Install thirdparty package."
vcs import src < thirdparty.repos

source /opt/ros/humble/setup.bash
rosdep update
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
rosdep update

colcon build --symlink-install
. install/setup.bash

cd src/waypoint-create-app
npm install react-scripts
npm install roslib
