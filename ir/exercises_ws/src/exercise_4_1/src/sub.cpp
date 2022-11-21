#include <ros/ros.h>
#include <apriltag_ros/AprilTagDetectionArray.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Point.h>
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"

int counter;

void messageCallback(const apriltag_ros::AprilTagDetectionArray::ConstPtr &msg) {
    for (apriltag_ros::AprilTagDetection detection : msg->detections) {
        counter++;
        geometry_msgs::Point_<std::allocator<void>> pose = detection.pose.pose.pose.position;
        ROS_INFO("\nreceived pose #%d: (x=%f, y=%f, z=%f)", counter, pose.x, pose.y, pose.z);
        
        tf2_ros::Buffer tfBuffer;
        tf2_ros::TransformListener tfListener(tfBuffer);
        geometry_msgs::TransformStamped tf = tfBuffer.lookupTransform("base_link", "rgb_camera_link", ros::Time(0), ros::Duration(3));
        tf2::doTransform(pose, pose, tf);
        ROS_INFO("\ntransformed pose #%d: (x=%f, y=%f, z=%f)\n-------", counter, pose.x, pose.y, pose.z);
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "sub_node");
    counter = 0; 

    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("tag_detections", 1000, messageCallback);
    ros::spin();

    return 0;
}
