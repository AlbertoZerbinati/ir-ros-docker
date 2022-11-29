#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>

#include <iostream>
#include <vector>

#include "Point.h"
#include "ScannerUtilities.h"

/*
 * Callback receiving the scanner data and printing the position of the detected
 * people.
 */
void callback(const sensor_msgs::LaserScan::ConstPtr& scan) {
    const float angleMin = scan->angle_min;
    const float angleIncrement = scan->angle_increment;
    const std::vector<float> ranges = scan->ranges;

    const std::vector<PolarPoint> polarInputPoints = ScannerUtilities::rangesToPolarPoints(
        ranges, angleMin, angleIncrement);
    std::vector<CartesianPoint> cartesianInputPoints;
    for (PolarPoint p : polarInputPoints) {
        cartesianInputPoints.push_back(toCartesian(p));
    }

    int numberOfPeople = ScannerUtilities::getNumberOfPeople(ranges);
    const std::vector<CartesianPoint> solution = ScannerUtilities::kMeansClustering(
        &cartesianInputPoints, numberOfPeople);

    ROS_INFO("The scanner detected %d people:", numberOfPeople);
    for (CartesianPoint personPosition : solution) {
        ROS_INFO_STREAM("- person at " << personPosition);
    }
}

/*
 * Main function executing the ROS node.
 */
int main(int argc, char** argv) {
    ros::init(argc, argv, "laser_node");

    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("/scan", 1000, callback);
    ros::spin();
}
