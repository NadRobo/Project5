#!/bin/sh
xterm  -e  "roslaunch turtlebot_gazebo turtlebot_world.launch" & 
sleep 10
xterm  -e  "roslaunch map  nad_mapping.launch" &
sleep 10
xterm  -e  "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 10
xterm  -e  "roslaunch turtlebot_teleop keyboard_teleop.launch" 
