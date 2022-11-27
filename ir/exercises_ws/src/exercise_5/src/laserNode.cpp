#include <iostream>
#include <vector>

#include "Kmeans.h"
#include "Point.h"

int main() {
    std::vector<CartesianPoint> inputPoints{
        CartesianPoint(4, 20),
        CartesianPoint(4.2, 19.6),
        CartesianPoint(3.9, 21.6),
        CartesianPoint(10.1, 20),
        CartesianPoint(9.5, 18.5),
        CartesianPoint(9.6, 19.3),
        CartesianPoint(11, 18),
        CartesianPoint(18.3, 2),
        CartesianPoint(18.2, 3),
        CartesianPoint(17, 2.24),
        CartesianPoint(19, -2.1),
        CartesianPoint(17.8, -2.8),
        CartesianPoint(18.7, -3),
        CartesianPoint(18.1, -3.2),
        CartesianPoint(3, -21),
        CartesianPoint(2.1, -19.3),
        CartesianPoint(1.8, -20.2),
        CartesianPoint(8.9, -20),
        CartesianPoint(7.5, -17.5),
        CartesianPoint(8.6, -19.6),
        CartesianPoint(10, -18.1)};

    std::vector<CartesianPoint> centroids = kMeansClustering(&inputPoints, 5, 3);

    for (auto it = begin(centroids); it != end(centroids); ++it) {
        std::cout << *it << std::endl;
    }

    return 0;
}