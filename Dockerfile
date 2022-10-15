FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

RUN apt-get install curl gnupg2 -y

RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -

RUN apt-get update
RUN apt-get install ros-melodic-desktop-full -y
RUN apt-get install ros-melodic-moveit* ros-melodic-ros-control ros-melodic-ros-controllers ros-melodic-ddynamic-reconfigure ros-melodic-dynamic-reconfigure ros-melodic-people-msgs ros-melodic-joint-state-controller ros-melodic-twist-mux ros-melodic-ompl ros-melodic-controller-manager ros-melodic-joy ros-melodic-joy-teleop ros-melodic-teleop-tools ros-melodic-control-toolbox ros-melodic-sound-play ros-melodic-navigation ros-melodic-depthimage-to-laserscan ros-melodic-four-wheel-steering-msgs ros-melodic-urdf-geometry-parser ros-melodic-teb-local-planner -y

RUN apt-get install -y python-rosinstall python-catkin-tools -y
RUN apt-get install python-rosdep -y

RUN rosdep init
RUN rosdep update
