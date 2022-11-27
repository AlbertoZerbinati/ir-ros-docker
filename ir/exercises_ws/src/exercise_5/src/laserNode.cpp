#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>

#include <iostream>
#include <vector>

#include "Kmeans.h"
#include "Point.h"

/*
 * Simple algorithm to determine the number of people, given a vector of ranges.
 *
 * It counts the number of objects in the scene (non-INFINITY detections),
 * assuming that each one corresponds to a single leg, and returns half of that.
 */
int getNumberOfPeople(std::vector<float> ranges) {
    int result = 0;
    bool isDetectingLeg = false;
    bool isFirstLegDetected = false;

    for (float range : ranges) {
        bool isDetection = range != INFINITY;

        if (isDetectingLeg) {
            if (!isDetection) {
                if (isFirstLegDetected) {
                    result++;
                    isFirstLegDetected = false;
                    isDetectingLeg = false;
                } else {
                    isFirstLegDetected = true;
                }
            }
        } else {
            if (isDetection) {
                isDetectingLeg = true;
            }
        }
    }

    return result / 2;
}

void callback(const sensor_msgs::LaserScan::ConstPtr& scan) {
    // TODO
    // 1 relevant infos: scan->angle_min, angle_min, angle_incr
    // 2 we should use these to determine the theta components of our input points

    // TODO
    // 3 DONE use scan->ranges to read the scans
    // 4 DONE apply the algorithm to detect the number of people in the scene
    // 5 represent the non-inf points as PolarPoints
    // 6 translate them to CartesianPoints
    // 7 apply K-Means Lloyd's to get the solution, using number of clusters found at (4)
    // 8 print the solution

    // implementation of (3) and (4)
    int numberOfPeople = getNumberOfPeople(scan->ranges);
    // std::cout << numberOfPeople << std::endl;
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "laser_node");

    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("/scan", 1000, callback);
    ros::spin();
}
