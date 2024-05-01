#!/bin/bash

mkdir src
echo "Install moti auto repos."
vcs import src < motiauto.repos

echo "Install thirdparty package."
vcs import src < thirdparty.repos

source /opt/ros/humble/setup.bash
rosdep update
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
rosdep update

colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release --cargo-args --release