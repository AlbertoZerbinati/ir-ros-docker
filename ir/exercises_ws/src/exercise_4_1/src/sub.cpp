#include "ros/ros.h"
#include "apriltag_ros/AprilTagDetectionArray.h"
 #include <tf2_ros/transform_listener.h>


void messageCallback(const apriltag_ros::AprilTagDetectionArray::ConstPtr &msg) {
    msg->detections[0].pose.pose.pose.position;


    tf2_ros::Buffer tfBuffer;
    tf2_ros::TransformListener tfListener(tfBuffer);

    tfBuffer.lookupTransform("base_link", "rgb_camera_link", ros::Time(0));

}

int main(int argc, char **argv) {
    ros::init(argc, argv, "sub_node");

    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("tag_detections", 1000, messageCallback);
    ros::spin();

    return 0;
}
