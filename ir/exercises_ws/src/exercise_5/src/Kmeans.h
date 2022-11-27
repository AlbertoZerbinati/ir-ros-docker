#include <algorithm>
#include <ctime>
#include <iostream>
#include <vector>

#include "Point.h"

/**
 * Perform k-means clustering
 * @param points - pointer to std::vector of points
 * @param epochs - number of k means iterations
 * @param k - the number of initial centroids
 */
std::vector<CartesianPoint> kMeansClustering(std::vector<CartesianPoint>* points, int epochs, int k) {
    int n = points->size();

    if (k > n) {
        // not enough elements
        return std::vector<CartesianPoint>{};
    }

    // Randomly initialise centroids
    // The index of the centroid within the centroids std::vector
    // represents the cluster label.
    std::vector<CartesianPoint> centroids;
    srand(time(0));
    while (centroids.size() < k) {
        CartesianPoint randItem = points->at(rand() % n);
        if (std::find(centroids.begin(), centroids.end(), randItem) == centroids.end()) {
            centroids.push_back(randItem);
        }
        std::cout << "initial centroid " << randItem;
    }
    std::cout << "\n\n";

    for (int i = 0; i < epochs; ++i) {
        // For each centroid, compute distance from centroid to each point
        // and update point's cluster if necessary
        for (std::vector<CartesianPoint>::iterator c = begin(centroids); c != end(centroids); ++c) {
            int clusterId = c - begin(centroids);

            for (std::vector<CartesianPoint>::iterator it = points->begin(); it != points->end(); ++it) {
                CartesianPoint p = *it;
                double dist = c->distance(p);
                if (dist < p.minDist) {
                    p.minDist = dist;
                    p.cluster = clusterId;
                }
                *it = p;
            }
        }

        // Create std::vectors to keep track of data needed to compute means
        std::vector<int> nPoints;
        std::vector<double> sumX, sumY;
        for (int j = 0; j < k; ++j) {
            nPoints.push_back(0);
            sumX.push_back(0.0);
            sumY.push_back(0.0);
        }

        // Iterate over points to append data to centroids
        for (std::vector<CartesianPoint>::iterator it = points->begin(); it != points->end(); ++it) {
            int clusterId = it->cluster;
            nPoints[clusterId] += 1;
            sumX[clusterId] += it->x;
            sumY[clusterId] += it->y;

            it->minDist = __DBL_MAX__;  // reset distance
        }
        // Compute the new centroids
        for (std::vector<CartesianPoint>::iterator c = begin(centroids); c != end(centroids); ++c) {
            int clusterId = c - begin(centroids);
            c->x = sumX[clusterId] / nPoints[clusterId];
            c->y = sumY[clusterId] / nPoints[clusterId];
        }

        for (int i = 0; i < k; ++i) {
            std::cout << "centroid " << centroids[i];
        }
        std::cout << "\n\n";
    }
    return centroids;
}
