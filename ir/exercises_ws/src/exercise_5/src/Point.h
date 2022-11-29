#pragma once

#include <iostream>

/*
 * Describe a point in the cartesian coordinates (x,y).
 */
class CartesianPoint {
   public:
    CartesianPoint(const double& x, const double& y);

    double distance(const CartesianPoint& p);

    friend std::ostream& operator<<(std::ostream& os, const CartesianPoint& p);

    friend bool operator==(const CartesianPoint& lhs, const CartesianPoint& rhs);

    double x, y;  // coordinates
    int cluster = -1;
    double minDist = __DBL_MAX__;
};

/*
 * Describe a point in the polar coordinates (r,theta).
 */
class PolarPoint {
   public:
    PolarPoint(const double& r, const double& theta);

    friend std::ostream& operator<<(std::ostream& os, const PolarPoint& p);

    friend bool operator==(const PolarPoint& lhs, const PolarPoint& rhs);

    double r;      // radius
    double theta;  // angle
};

// Operator prototypes
std::ostream& operator<<(std::ostream& os, const CartesianPoint& p);
bool operator==(const CartesianPoint& lhs, const CartesianPoint& rhs);
std::ostream& operator<<(std::ostream& os, const PolarPoint& p);
bool operator==(const PolarPoint& lhs, const PolarPoint& rhs);

/*
 * Convert Polar Point to Cartesian Point.
 */
CartesianPoint toCartesian(const PolarPoint& p);
