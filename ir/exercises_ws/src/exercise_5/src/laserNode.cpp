#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>

#include <iostream>
#include <vector>

#include "Kmeans.h"
#include "Point.h"

/*
 * Returns the list of points detected in the ranges vector, in polar coordinates.
 * Discards every infinite measurement.
 */
std::vector<PolarPoint> rangesToPolarPoints(
    std::vector<float> ranges, float angleMin, float angleIncrement) {
    std::vector<PolarPoint> result;

    for (std::vector<PolarPoint>::size_type i = 0; i < ranges.size(); ++i) {
        float range = ranges[i];
        if (range != INFINITY) {
            float theta = angleMin + (i * angleIncrement);
            result.push_back(PolarPoint(range, theta));
        }
    }

    return result;
}

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
    // 1 DONE relevant infos: scan->angle_min, angle_incr
    // 2 DONE we should use these to determine the theta components of our input points
    const float angleMin = scan->angle_min;
    const float angleIncrement = scan->angle_increment;

    // TODO
    // 3 DONE use scan->ranges to read the scans
    // 4 DONE apply the algorithm to detect the number of people in the scene
    // 5 DONE represent the non-inf points as PolarPoints
    // 6 DONE translate them to CartesianPoints
    // 7 DONE apply K-Means Lloyd's to get the solution, using number of clusters found at (4)
    // 8 DONE print the solution

    const std::vector<float> ranges = scan->ranges;

    // implementation of (3) and (4)
    int numberOfPeople = getNumberOfPeople(ranges);
    // std::cout << numberOfPeople << std::endl;

    // implementation of (1), (2) and (5)
    const std::vector<PolarPoint> polarInputPoints = rangesToPolarPoints(
        ranges, angleMin, angleIncrement);
    // for (PolarPoint p: polarInputPoints) {
    //     std::cout << p << std::endl;
    // }

    // implementation of (6), (7) and (8)
    std::vector<CartesianPoint> cartesianInputPoints;
    for (PolarPoint p : polarInputPoints) {
        cartesianInputPoints.push_back(toCartesian(p));
    }

    const std::vector<CartesianPoint> solution = kMeansClustering(
        &cartesianInputPoints, numberOfPeople);

    ROS_INFO("The scanner detected %d people:", numberOfPeople);

    for (CartesianPoint personPosition : solution) {
        ROS_INFO_STREAM("- person at " << personPosition);
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "laser_node");

    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("/scan", 1000, callback);
    ros::spin();
}
