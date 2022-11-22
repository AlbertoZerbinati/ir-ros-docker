#include <ros/ros.h>
#include <apriltag_ros/AprilTagDetectionArray.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Point.h>
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/calib3d/calib3d.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/Image.h>

int counter;
cv::Mat K;
cv::Mat D;

void infoCallback(sensor_msgs::CameraInfo::ConstPtr &camera_info) {
    K.at<double>(0,0) = camera_info->K.at(0);
    K.at<double>(1,0) = camera_info->K.at(1);
    K.at<double>(2,0) = camera_info->K.at(2);
    K.at<double>(0,1) = camera_info->K.at(3);
    K.at<double>(1,1) = camera_info->K.at(4);
    K.at<double>(2,1) = camera_info->K.at(5);
    K.at<double>(0,2) = camera_info->K.at(6);
    K.at<double>(1,2) = camera_info->K.at(7);
    K.at<double>(2,2) = camera_info->K.at(8);

    D.at<double>(0,0) = camera_info->D.at(0);
    D.at<double>(1,0) = camera_info->D.at(1);
    D.at<double>(2,0) = camera_info->D.at(2);
    D.at<double>(0,1) = camera_info->D.at(3);
    D.at<double>(1,1) = camera_info->D.at(4);
    D.at<double>(2,1) = camera_info->D.at(5);
    D.at<double>(0,2) = camera_info->D.at(6);
    D.at<double>(1,2) = camera_info->D.at(7);
    D.at<double>(2,2) = camera_info->D.at(8);
}

void dataCallback(const sensor_msgs::Image::ConstPtr& msg) {
    cv::imshow(msg->data);

    // for (apriltag_ros::AprilTagDetection detection : msg->detections) {
    //     counter++;
    //     geometry_msgs::Point_<std::allocator<void>> pose = detection.pose.pose.pose.position;
    //     ROS_INFO("\nreceived pose #%d: (x=%f, y=%f, z=%f)", counter, pose.x, pose.y, pose.z);
        
    //     tf2_ros::Buffer tfBuffer;
    //     tf2_ros::TransformListener tfListener(tfBuffer);
        
    //     // the fourth parameter tells to wait for a few seconds, to make sure
    //     // that the transformation becomes available.
    //     geometry_msgs::TransformStamped tf = 
    //         tfBuffer.lookupTransform("base_link", "rgb_camera_link", ros::Time(0), ros::Duration(3));
    //     tf2::doTransform(pose, pose, tf);
    //     ROS_INFO("\ntransformed pose #%d: (x=%f, y=%f, z=%f)\n-------", 
    //         counter, pose.x, pose.y, pose.z);

    //     float pose_x, pose_y, pose_z = 0.0;

    //     cv::Mat rvec = (cv::Mat_<float>(3,1) << 0.0, 0.0, 0.0);
    //     cv::Mat tvec = (cv::Mat_<float>(3,1) << pose_x, pose_y, pose_z);

    //     cv::projectPoints(objectPoints, rvec, tvec, K, D, imagePoints);
    // }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "sub_node");
    counter = 0; 

    ros::NodeHandle n;
    ros::Subscriber sub_camera_info = n.subscribe("/kinect/rgb/camera_info", 1, infoCallback);
    ros::Subscriber sub_data = n.subscribe("/kinect/rgb/image_rect_color", 10000, dataCallback);
    ros::spin();

    return 0;
}
