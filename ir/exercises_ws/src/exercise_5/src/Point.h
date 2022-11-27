#ifndef POINTS_H_
#define POINTS_H_

#include <iostream>

/**
 * Class CartesianPoint
 *
 * Describe a point in the cartesian coordinates (x,y)
 */
class CartesianPoint {
   public:
    /**
     * Default constructor for a cartesian point. Initialize the point at (0.0, 0.0)
     */
    CartesianPoint();

    /**
     * Initialize a Cartesian Point with the given values
     * @param x x coordinate
     * @param y y coordinate
     */
    CartesianPoint(const double& x, const double& y);

    /**
     * Calculate the Euclidean distance between the current and given point
     * @param p CartesianPoint
     */
    double distance(const CartesianPoint& p);

    friend std::ostream& operator<<(std::ostream& os, const CartesianPoint& p);

    friend bool operator==(const CartesianPoint& lhs, const CartesianPoint& rhs);

    double x, y;  // coordinates
    int cluster = -1;
    double minDist = __DBL_MAX__;
};

/**
 * Class PolarPoint
 *
 * Describe a point in the polar coordinates (r,theta)
 */
class PolarPoint {
   public:
    /**
     * Initialize a Polar Point with the given values
     * @param r radius
     * @param theta angle
     */
    PolarPoint(const double& r, const double& theta);

    friend std::ostream& operator<<(std::ostream& os, const PolarPoint& p);

    friend bool operator==(const PolarPoint& lhs, const PolarPoint& rhs);

    double r;      // radius
    double theta;  // angle
};

// operators prototype
std::ostream& operator<<(std::ostream& os, const CartesianPoint& p);
bool operator==(const CartesianPoint& lhs, const CartesianPoint& rhs);
std::ostream& operator<<(std::ostream& os, const PolarPoint& p);
bool operator==(const PolarPoint& lhs, const PolarPoint& rhs);

/**
 * Convert Polar Point to Cartesian Point
 * @param p PolarPoint to be converted
 */
CartesianPoint toCartesian(const PolarPoint& p);

#endif
