#!/bin/bash

mkdir src
vcs import src < motiauto.repos

source /opt/ros/humble/setup.bash
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release --cargo-args --release