#ifndef LIST_H_
#define LIST_H_

#include <iostream>

class CartesianPoint {
   public:
    double x, y;     // coordinates
    int cluster;     // no default cluster
    double minDist;  // default infinite dist to nearest cluster

    CartesianPoint() : x(0.0),
                       y(0.0),
                       cluster(-1),
                       minDist(__DBL_MAX__) {}

    CartesianPoint(double x, double y) : x(x),
                                         y(y),
                                         cluster(-1),
                                         minDist(__DBL_MAX__) {}

    double distance(CartesianPoint p) {
        return (p.x - x) * (p.x - x) + (p.y - y) * (p.y - y);
    }

    friend std::ostream& operator<<(std::ostream& os, const CartesianPoint& p) {
        os << "(x=" << p.x << ", y=" << p.y << ")\n";
        return os;
    }

    friend bool operator==(const CartesianPoint& lhs, const CartesianPoint& rhs) {
        return lhs.x == rhs.x && lhs.y == rhs.y;
    }
};

class PolarPoint {
   public:
    double r, theta;  // polar coordinates

    PolarPoint(double r, double theta) : r(r),
                                         theta(theta) {}

    friend std::ostream& operator<<(std::ostream& os, const PolarPoint& p) {
        os << "(r=" << p.r << ", theta=" << p.theta << ")\n";
        return os;
    }

    friend bool operator==(const PolarPoint& lhs, const PolarPoint& rhs) {
        return lhs.r == rhs.r && lhs.theta == rhs.theta;
    }
};

#endif