#include <algorithm>
#include <ctime>
#include <iostream>
#include <vector>

#include "Point.h"

const int EPOCHS = 10;

/**
 * Perform k-means clustering
 * @param points - pointer to std::vector of points
 * @param k - the number of initial centroids
 */
std::vector<CartesianPoint> kMeansClustering(std::vector<CartesianPoint>* points, int k) {
    int n = points->size();

    if (k > n) {
        // not enough elements
        return std::vector<CartesianPoint>{};
    }

    // Initialise centroids.
    // Pick the first at random and then iteratively pick the most distant point,
    // simulating k-means++, but without using the random distributions to pick.
    // The index of the centroid within the centroids std::vector
    // represents the cluster label.
    std::vector<CartesianPoint> centroids;
    srand(time(0));
    CartesianPoint firstCentroid = points->at(rand() % n);
    centroids.push_back(firstCentroid);
    // std::cout << "initial centroid " << firstCentroid << std::endl;

    while (centroids.size() < k) {
        std::vector<float> distances;
        for (CartesianPoint p : *points) {
            float minDistanceFromCentroids = INFINITY;
            for (CartesianPoint c : centroids) {
                if (c.distance(p) < minDistanceFromCentroids) {
                    minDistanceFromCentroids = c.distance(p);
                }
            }
            // std::cout << "point " << p << " min dist = " << minDistanceFromCentroids << std::endl;
            distances.push_back(minDistanceFromCentroids);
        }
        // std::cout << points->size() << "     " << distances.size() << std::endl;
        int newCentroidIndex = std::distance(
            std::begin(distances), std::max_element(std::begin(distances), std::end(distances)));
        centroids.push_back(points->at(newCentroidIndex));
        // std::cout << "initial centroid " << points->at(newCentroidIndex) << " index " << newCentroidIndex << std::endl;
    }

    for (int i = 0; i < EPOCHS; ++i) {
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
            // std::cout << "centroid " << centroids[i];
        }
        // std::cout << "\n\n";
    }
    return centroids;
}
