# This file is part of Instance Stixels:
# https://github.com/tudelft-iv/instance-stixels

# Copyright (c) 2019 Thomas Hehn.

# Instance Stixels is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Instance Stixels is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Instance Stixels. If not, see <http://www.gnu.org/licenses/>.

#cmake_minimum_required(VERSION 2.4)
cmake_minimum_required(VERSION 3.8 FATAL_ERROR)
if(COMMAND cmake_policy)
    cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

project(instance_stixels_msgs)

# Optional, only for ros node
find_package( catkin REQUIRED COMPONENTS # not required
  roscpp
  rospy
  sensor_msgs
  std_msgs
  visualization_msgs
  message_generation
  )

add_message_files(
    FILES
    InstanceStixelsArray.msg
    InstanceStixel.msg
    )
generate_messages(
    DEPENDENCIES
    std_msgs
    sensor_msgs
    visualization_msgs
    )

catkin_package(
    CATKIN_DEPENDS
    roscpp
    sensor_msgs
    std_msgs
    visualization_msgs
    message_runtime
    message_generation
    )


