#pragma once

#include <vector>

#include "Point.h"

namespace ScannerUtilities {

/*
 * Perform k-means clustering with Lloyd's algorithm, given a pointer to
 * a vector of input points and k.
 *
 * Adapted from: https://github.com/robertmartin8/RandomWalks/blob/master/kmeans.cpp
 */
std::vector<CartesianPoint> kMeansClustering(std::vector<CartesianPoint>* points, int k);

/*
 * Returns the list of points detected in the ranges vector, in polar coordinates.
 * Discards every infinite measurement.
 */
std::vector<PolarPoint> rangesToPolarPoints(
    std::vector<float> ranges, float angleMin, float angleIncrement);

/*
 * Simple algorithm to determine the number of people, given a vector of ranges.
 *
 * It counts the number of objects in the scene (non-INFINITY detections),
 * assuming that each one corresponds to a single leg, and returns half of that.
 */
int getNumberOfPeople(std::vector<float> ranges);

}  // namespace ScannerUtilities
