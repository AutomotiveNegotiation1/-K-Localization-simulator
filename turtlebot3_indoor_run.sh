#!/bin/bash

gnome-terminal -e "roslaunch turtlebot3_gazebo turtlebot3_indoor.launch"

sleep 2

gnome-terminal -e "roslaunch pozyx_simulation uwb_anchors_set.launch" 

sleep 2

gnome-terminal -e "rosrun pozyx_simulation uwb_simulation.py"

sleep 2

export TURTLEBOT3_MODEL=waffle_pi

gnome-terminal -e "roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch"

