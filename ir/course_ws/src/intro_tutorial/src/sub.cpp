#include "ros/ros.h"
#include "intro_tutorial/msg1.h"

void messageCallback(const intro_tutorial::msg1::ConstPtr& msg) {
    ROS_INFO("I heard: [%d] [%d] [%s]", msg->A, msg->B, msg->C.c_str());
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "sub_node");

    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("alberto", 1000, messageCallback);
    ros::spin();

    return 0;
}
