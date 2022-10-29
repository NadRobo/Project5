#!/bin/sh
xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch " &
sleep 5
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/catkin_ws/src/map/maps/map.yaml" &
sleep 5
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch rviz_path:=/home/workspace/catkin_ws/src/rvizConfig/src/nav.rviz" &
sleep 5
xterm -e " rosrun pick_objects pick_objects " &
sleep 5
xterm -e " rosrun add_markers add_markers "
